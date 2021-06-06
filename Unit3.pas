unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, XPMan, DB, ADODB, jpeg, ExtCtrls, StdCtrls,
  DBCtrls, Mask, acDBGrid, sPanel, sDBNavigator, sDBEdit, sGroupBox,
  Buttons, sBitBtn, sSpeedButton, shellapi;

type
  TForm3 = class(TForm)
    DataSource1: TDataSource;
    Image1: TImage;
    sDBGrid1: TsDBGrid;
    ADOTable1: TADOTable;
    sBitBtn3: TsBitBtn;
    sBitBtn2: TsBitBtn;
    sBitBtn1: TsBitBtn;
    sBitBtn4: TsBitBtn;
    sBitBtn5: TsBitBtn;
    sBitBtn6: TsBitBtn;
    sSpeedButton1: TsSpeedButton;
    procedure sBitBtn3Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
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
  Form3: TForm3;

implementation

uses Unit1, Unit8, Excel;

{$R *.dfm}

procedure TForm3.sBitBtn3Click(Sender: TObject);
begin
add_otprav.show;
ADOTable1.Insert;
end;

procedure TForm3.sBitBtn2Click(Sender: TObject);
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

procedure TForm3.sBitBtn1Click(Sender: TObject);
begin
add_otprav.show;
ADOTable1.Edit;
end;

procedure TForm3.sBitBtn4Click(Sender: TObject);
begin
case MessageBox(Handle, 'Вы действительно хотите выйти из программы?',
  'Выход из программы', MB_YESNO + MB_ICONQUESTION) of
  IDYES:
    begin
      application.terminate
    end;
  IDNO:
    begin
      form3.Show;
    end;
     end;

end;

procedure TForm3.sBitBtn5Click(Sender: TObject);
begin
form3.Close;
form1.show;
end;

procedure TForm3.sBitBtn6Click(Sender: TObject);
begin
Export2Excel(Caption,sDBGrid1.DataSource.DataSet);
end;

procedure TForm3.sSpeedButton1Click(Sender: TObject);
begin
ShellExecute(0, nil, 'asu.chm', nil, nil, SW_SHOWNORMAL);
end;

end.
