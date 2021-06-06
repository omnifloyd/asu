unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, ExtCtrls, DBCtrls, XPMan,
  StdCtrls, jpeg, Menus, Mask, sSkinProvider, sSkinManager, acDBGrid,
  sEdit, sComboBox, sPanel, shellapi, sMonthCalendar, Buttons, sBitBtn,
  sSpeedButton;

type
  TForm1 = class(TForm)
    ADOConnection1: TADOConnection;
    Image1: TImage;
    MainMenu1: TMainMenu;
    N12121: TMenuItem;
    N2221: TMenuItem;
    N1: TMenuItem;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    sSkinManager1: TsSkinManager;
    sDBGrid1: TsDBGrid;
    sEdit1: TsEdit;
    sComboBox1: TsComboBox;
    N4: TMenuItem;
    sBitBtn1: TsBitBtn;
    sBitBtn2: TsBitBtn;
    sBitBtn3: TsBitBtn;
    sBitBtn4: TsBitBtn;
    sBitBtn5: TsBitBtn;
    sSpeedButton1: TsSpeedButton;
    procedure N12121Click(Sender: TObject);
    procedure N12122Click(Sender: TObject);
    procedure N2221Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure sBitBtn3Click(Sender: TObject);
    procedure sBitBtn4Click(Sender: TObject);
    procedure sBitBtn5Click(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
   str:string;
 search:string;
 Data:TDateTime;

implementation

uses Unit2, Unit3, Unit4, Unit5, Unit13, Unit15, Unit12;

{$R *.dfm}

procedure TForm1.N12121Click(Sender: TObject);
begin
Form2.show;
Form1.visible:=false;
end;

procedure TForm1.N12122Click(Sender: TObject);
begin
Form3.show;
Form1.visible:=false;
end;

procedure TForm1.N2221Click(Sender: TObject);
begin
Form4.show;
Form1.visible:=false;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
Form5.show;
Form1.visible:=false;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
path_finding.show;
Form1.Visible:=false;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
ShellExecute(0, nil, 'asu.chm', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.sBitBtn1Click(Sender: TObject);
begin
zakaz.Show;
form1.visible:=false;
end;

procedure TForm1.sBitBtn2Click(Sender: TObject);
begin
login.sedit1.Clear;
adoquery1.SQL.Clear;
sDBGrid1.Visible:=false;
login.show;
form1.Close;
end;

procedure TForm1.sBitBtn3Click(Sender: TObject);
begin
case MessageBox(Handle, 'Вы действительно хотите выйти из программы?',
  'Выход из программы', MB_YESNO + MB_ICONQUESTION) of
  IDYES:
    begin
      application.terminate
    end;
  IDNO:
    begin
      form1.Show;
    end;
     end;

end;



procedure TForm1.sBitBtn4Click(Sender: TObject);
begin
path_finding.Show;
form1.visible:=false;
end;

procedure TForm1.sBitBtn5Click(Sender: TObject);
begin

if ((sComboBox1.ItemIndex = 0 ))then  begin
  sDBGrid1.Visible:=true;
 str:=sEdit1.Text;
 str:=TRIM(str);

ADOQuery1.SQL.Clear;

ADOQuery1.SQL.Add( 'Select * from Поезда '+
 'where [Номер поезда] Like "%'+str+'%" or'  +
 ' [Начальная станция] Like "%'+str+'%" or'  +
 ' [Конечная станция] Like "%'+str+'%"');
ADOQuery1.Active:=true;
end
else
if (sComboBox1.ItemIndex = 1) then begin
 sDBGrid1.Visible:=true;
 str:=sEdit1.Text;
 str:=TRIM(str);

 ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('Select *  from Станции '+
 'where [Номер] Like "%'+str+'%" or'  +
 ' [Название станции] Like "%'+str+'%" ');
ADOQuery1.Active:=true;
end
else
if (sComboBox1.ItemIndex = 2) then begin
 sDBGrid1.Visible:=true;
 str:=sEdit1.Text;
 str:=TRIM(str);

 ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('Select * from Стоимость '+
 'where [Название станции отправления] Like "%'+str+'%" or'  +
 ' [ID] Like "%'+str+'%" or' +
 ' [Название станции прибытия] like "%'+str+'%"');
ADOQuery1.Active:=true;
end
else
ShowMessage('Введите запрос');
end;

procedure TForm1.sSpeedButton1Click(Sender: TObject);
begin
adoquery1.SQL.Clear;
sEdit1.Clear;
end;



end.
