unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPMan, DB, ADODB, Grids, DBGrids, jpeg, ExtCtrls, StdCtrls,
  DBCtrls, acDBGrid, sPanel, sDBNavigator, Mask, sDBEdit, sGroupBox,
  Buttons, sBitBtn, sSpeedButton, shellapi;

type
  TForm4 = class(TForm)
    DataSource1: TDataSource;
    Image1: TImage;
    sDBGrid1: TsDBGrid;
    ADOTable1: TADOTable;
    sBitBtn3: TsBitBtn;
    sBitBtn1: TsBitBtn;
    sBitBtn2: TsBitBtn;
    sBitBtn4: TsBitBtn;
    sBitBtn5: TsBitBtn;
    sBitBtn6: TsBitBtn;
    sSpeedButton1: TsSpeedButton;
    procedure sBitBtn3Click(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
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
  Form4: TForm4;

implementation

uses Unit1, Unit9, Excel;

{$R *.dfm}

procedure TForm4.sBitBtn3Click(Sender: TObject);
begin
add_stan.show;
ADOTable1.Insert;
end;

procedure TForm4.sBitBtn1Click(Sender: TObject);
begin
add_stan.show;
ADOTable1.Edit;
end;

procedure TForm4.sBitBtn2Click(Sender: TObject);
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

procedure TForm4.sBitBtn4Click(Sender: TObject);
begin
case MessageBox(Handle, 'Вы действительно хотите выйти из программы?',
  'Выход из программы', MB_YESNO + MB_ICONQUESTION) of
  IDYES:
    begin
      application.terminate
    end;
  IDNO:
    begin
      form4.Show;
    end;
     end;

end;

procedure TForm4.sBitBtn5Click(Sender: TObject);
begin
form4.Close;
form1.show;
end;

procedure TForm4.sBitBtn6Click(Sender: TObject);
begin
Export2Excel(Caption,sDBGrid1.DataSource.DataSet);
end;

procedure TForm4.sSpeedButton1Click(Sender: TObject);
begin
ShellExecute(0, nil, 'asu.chm', nil, nil, SW_SHOWNORMAL);
end;

end.
