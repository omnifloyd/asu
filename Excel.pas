unit Excel;

interface

uses
  Forms, Controls, DB, ComObj;

type
  TExport2ExcelCallBack = function(App : OleVariant; Line : Integer) : Integer of object;

procedure Export2Excel(Caption : String; DataSet : TDataSet;
                       Hdr : TExport2ExcelCallBack = Nil;
                       Ftr : TExport2ExcelCallBack = Nil);

implementation

{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
procedure Export2Excel(Caption : String; DataSet : TDataSet;
                       Hdr : TExport2ExcelCallBack = Nil;
                       Ftr : TExport2ExcelCallBack = Nil);
var
  App : OleVariant;
  I, Line, Col, MaxCol : Integer;
  BM : Pointer;
begin
  Screen.Cursor := crHourGlass;
  DataSet.DisableControls;
  BM := DataSet.GetBookmark;
  Try
    App:=CreateOleObject('Excel.Application');
    App.Visible := false;
    App.workbooks.Add;
    App.WorkBooks[1].WorkSheets[1].Name := Caption;
    Line := 1;

    // Add header
    If @Hdr <> Nil Then
      Try
        Line := Hdr(App, Line);
      Except
        // Hide all exceptions
      End;

    // Insert data
    DataSet.First;
    Col := 1;
    For I := 0 To DataSet.Fields.Count-1 Do
      If DataSet.Fields[I].Visible Then
        Begin
          App.WorkBooks[1].WorkSheets[1].cells[Line,Col] := DataSet.Fields[I].DisplayLabel;
          Inc(Col);
        End;
    MaxCol := Col;
    App.WorkBooks[1].WorkSheets[1].Rows[Line].Font.Bold := True;
    While Not DataSet.Eof Do
      Begin
        Inc(Line);
        Col := 1;
        For I := 0 To DataSet.Fields.Count-1 Do
          If DataSet.Fields[I].Visible Then
            Begin
              App.WorkBooks[1].WorkSheets[1].cells[Line,Col] := DataSet.Fields[I].AsString;
              Inc(Col);
            End;
        DataSet.Next;
      End;

    For I := 1 to MaxCol Do
      App.WorkBooks[1].WorkSheets[1].Columns[I].EntireColumn.AutoFit;
    App.Visible := True;

    // Add footer
    If @Ftr <> Nil Then
      Try
        Line := Ftr(App, Line);
      Except
        // Hide all exceptions
      End;

  Finally
    Screen.Cursor := crDefault;
    DataSet.GotoBookmark(BM);
    DataSet.EnableControls;
  End;
end;
{$WARN UNSAFE_CODE ON}
{$WARN UNSAFE_TYPE ON}

end.
