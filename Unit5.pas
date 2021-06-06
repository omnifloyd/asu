unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPMan, DB, ADODB, Grids, DBGrids, jpeg, ExtCtrls, StdCtrls,
  DBCtrls, acDBGrid, sGroupBox, sPanel, sDBNavigator, Mask, sDBEdit,
  Buttons, sSpeedButton, sBitBtn, sEdit, shellapi;

type
  TForm5 = class(TForm)
    DataSource1: TDataSource;
    Image1: TImage;
    ADOQuery1: TADOQuery;
    sDBGrid1: TsDBGrid;
    ADOTable1: TADOTable;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    sBitBtn3: TsBitBtn;
    sBitBtn1: TsBitBtn;
    sBitBtn2: TsBitBtn;
    sBitBtn4: TsBitBtn;
    sBitBtn5: TsBitBtn;
    sEdit1: TsEdit;
    sEdit2: TsEdit;
    sBitBtn6: TsBitBtn;
    sSpeedButton3: TsSpeedButton;
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure sBitBtn3Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure sBitBtn4Click(Sender: TObject);
    procedure sBitBtn5Click(Sender: TObject);
    procedure sBitBtn6Click(Sender: TObject);
    procedure sSpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit1, Unit11, Excel;

{$R *.dfm}


procedure TForm5.sSpeedButton1Click(Sender: TObject);
var
f1,f2:string;
begin
f1:=sEdit1.Text;
f2:=sEdit2.Text;
 f1:=TRIM(f1);
 f2:=TRIM(f2);
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('Select * from Стоимость '+
 'where [Название станции отправления] Like "%'+f1+'%" and' +
 ' [Название станции прибытия] like "%'+f2+'%"');
ADOQuery1.Active:=true;
Datasource1.DataSet:=ADOQuery1;

end;

procedure TForm5.sSpeedButton2Click(Sender: TObject);
begin
Datasource1.DataSet:=ADOTable1;
sEdit1.Clear;
sEdit2.Clear;
end;

procedure TForm5.sBitBtn3Click(Sender: TObject);
begin
add_stoimost.show;
ADOTable1.Insert;
end;

procedure TForm5.sBitBtn2Click(Sender: TObject);
begin
try
if Application.MessageBox('Удалить выбранную запись?','',MB_YESNO+MB_ICONQUESTION )=IDYES then
DataSource1.DataSet.Delete;
except
on Exception do
ShowMessage('Область данных пуста');
end;
end;

procedure TForm5.sBitBtn1Click(Sender: TObject);
begin
add_stoimost.show;
ADOTable1.Edit;
end;

procedure TForm5.sBitBtn4Click(Sender: TObject);
begin
case MessageBox(Handle, 'Вы действительно хотите выйти из программы?',
  'Выход из программы', MB_YESNO + MB_ICONQUESTION) of
  IDYES:
    begin
      application.terminate
    end;
  IDNO:
    begin
      form5.Show;
    end;
     end;

end;

procedure TForm5.sBitBtn5Click(Sender: TObject);
begin
form5.Close;
form1.show;
end;

procedure TForm5.sBitBtn6Click(Sender: TObject);
begin
Export2Excel(Caption,sDBGrid1.DataSource.DataSet);
end;

procedure TForm5.sSpeedButton3Click(Sender: TObject);
begin
ShellExecute(0, nil, 'asu.chm', nil, nil, SW_SHOWNORMAL);
end;

end.
