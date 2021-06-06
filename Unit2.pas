unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, XPMan, jpeg, ExtCtrls, StdCtrls,
  Mask, DBCtrls, sPanel, sDBNavigator, acDBGrid, sDBEdit, sGroupBox, sLabel,
  printers, Buttons, sBitBtn, sSpeedButton, shellapi;

type
  TForm2 = class(TForm)
    DataSource1: TDataSource;
    Image1: TImage;
    ADOQuery1: TADOQuery;
    sDBGrid1: TsDBGrid;
    sBitBtn1: TsBitBtn;
    sBitBtn2: TsBitBtn;
    sBitBtn3: TsBitBtn;
    ADOTable1: TADOTable;
    sBitBtn4: TsBitBtn;
    sBitBtn5: TsBitBtn;
    sBitBtn6: TsBitBtn;
    sSpeedButton1: TsSpeedButton;
    procedure Button5Click(Sender: TObject);
    procedure sDBGrid1TitleClick(Column: TColumn);
    procedure sBitBtn1Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure sBitBtn3Click(Sender: TObject);
    procedure sBitBtn4Click(Sender: TObject);
    procedure sBitBtn5Click(Sender: TObject);
    procedure sBitBtn6Click(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1, Unit7, Excel;

{$R *.dfm}

procedure TForm2.Button5Click(Sender: TObject);
begin
application.terminate
end;

procedure TForm2.sDBGrid1TitleClick(Column: TColumn);
Var f:string;
begin
    f:= Column.FieldName;
    ADOQuery1.Sort:=f;
end;



procedure TForm2.sBitBtn1Click(Sender: TObject);
begin
add_poezd.show;
ADOTable1.Edit;
end;

procedure TForm2.sBitBtn2Click(Sender: TObject);
begin
try
if Application.MessageBox('Удалить выбранную запись?','',MB_YESNO)=IDYES then
begin
ADOTable1.Delete;
end;
except
on e:Exception do
ShowMessage('Область данных пуста');
end;
end;

procedure TForm2.sBitBtn3Click(Sender: TObject);
begin
add_poezd.show;
ADOTable1.insert;
end;

procedure TForm2.sBitBtn4Click(Sender: TObject);
begin
case MessageBox(Handle, 'Вы действительно хотите выйти из программы?',
  'Выход из программы', MB_YESNO + MB_ICONQUESTION) of
  IDYES:
    begin
      application.terminate
    end;
  IDNO:
    begin
      form2.Show;
    end;
     end;

end;

procedure TForm2.sBitBtn5Click(Sender: TObject);
begin
form2.Close;
form1.show;
end;

procedure TForm2.sBitBtn6Click(Sender: TObject);
begin
Export2Excel(Caption,sDBGrid1.DataSource.DataSet);
end;

procedure TForm2.sSpeedButton1Click(Sender: TObject);
begin
ShellExecute(0, nil, 'asu.chm', nil, nil, SW_SHOWNORMAL);
end;

end.
