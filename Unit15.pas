unit Unit15;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, ADODB, Grids, DBGrids, Buttons,
  sButton, sBitBtn, sGroupBox, acDBGrid, sEdit, jpeg, ExtCtrls, sPanel,
  sBevel, ComObj, sSpeedButton, shellapi;

type
  Tzakaz = class(TForm)
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ADOQuery1: TADOQuery;
    ADOTable2: TADOTable;
    DataSource2: TDataSource;
    sBitBtn1: TsBitBtn;
    sBitBtn2: TsBitBtn;
    sBitBtn3: TsBitBtn;
    sBitBtn4: TsBitBtn;
    sBitBtn5: TsBitBtn;
    sBitBtn6: TsBitBtn;
    sDBGrid1: TsDBGrid;
    sEdit1: TsEdit;
    sEdit2: TsEdit;
    sEdit3: TsEdit;
    sEdit7: TsEdit;
    sBitBtn7: TsBitBtn;
    Image1: TImage;
    sPanel1: TsPanel;
    Label1: TLabel;
    sEdit4: TsEdit;
    Label7: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    sEdit6: TsEdit;
    sEdit5: TsEdit;
    Label8: TLabel;
    Label9: TLabel;
    sEdit8: TsEdit;
    ADOQuery2: TADOQuery;
    Label10: TLabel;
    sBitBtn8: TsBitBtn;
    sSpeedButton1: TsSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure sBitBtn3Click(Sender: TObject);
    procedure sBitBtn4Click(Sender: TObject);
    procedure sBitBtn5Click(Sender: TObject);
    procedure sBitBtn6Click(Sender: TObject);
    procedure sBitBtn7Click(Sender: TObject);
    procedure sBitBtn8Click(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  zakaz: Tzakaz;

implementation

uses Unit13, Unit1, Unit5, Unit6, Excel;

{$R *.dfm}

procedure Tzakaz.FormCreate(Sender: TObject);
begin
sdbgrid1.Columns[0].Width:=80;
sdbgrid1.Columns[1].Width:=104;
sdbgrid1.Columns[2].Width:=125;
sdbgrid1.Columns[3].Width:=75;
sdbgrid1.Columns[4].Width:=75;
sdbgrid1.Columns[5].Width:=75;
sdbgrid1.Columns[6].Width:=90;


end;

procedure Tzakaz.sBitBtn1Click(Sender: TObject);
begin
sEdit1.Clear;
sEdit2.Clear;
sEdit3.Clear;
sEdit4.Clear;
sEdit5.Clear;
sEdit6.Clear;
sEdit7.Clear;
sEdit8.Clear;
end;

procedure Tzakaz.sBitBtn2Click(Sender: TObject);
var
r,sv,f1,f2,f3,a,b,c:integer;

begin
Randomize;
r:=random(500);

 try
 //если маршрут подбирался
 path_finding.ADOQuery1.Edit;
 a:=path_finding.ADOQuery1.Fields[9].AsInteger;
 b:=path_finding.ADOQuery1.Fields[10].AsInteger;
 c:=path_finding.ADOQuery1.Fields[11].AsInteger;
 //СВ Место
 f1:=strtoint(sEdit4.Text);
 a:=a-(f1);
 path_finding.ADOQuery1.Fields[9].AsInteger:=a;
 //Купе
 f2:=strtoint(sEdit5.Text);
 b:=(b)-(f2);
 path_finding.ADOQuery1.Fields[10].AsInteger:=b;
 //Плацкарт
 f3:=strtoint(sEdit6.Text);
 c:=(c)-(f3);
 path_finding.ADOQuery1.Fields[11].AsInteger:=c;
 path_finding.ADOQuery1.post;
 path_finding.ADOQuery1.Refresh;

   except

      //если маршрут не подбирался
      path_finding.adotable1.Edit;
      a:=path_finding.adotable1.Fields[9].AsInteger;
      b:=path_finding.adotable1.Fields[10].AsInteger;
      c:=path_finding.adotable1.Fields[11].AsInteger;
      //СВ
      f1:=strtoint(sEdit4.Text);
      a:=a-(f1);
      path_finding.adotable1.Fields[9].AsInteger:=a;
      //Купе
      f2:=strtoint(sEdit5.Text);
      b:=(b)-(f2);
      path_finding.adotable1.Fields[10].AsInteger:=b;
      //Плацкарт
      f3:=strtoint(sEdit6.Text);
      c:=(c)-(f3);
      path_finding.adotable1.Fields[11].AsInteger:=c;
      path_finding.adotable1.post;
      path_finding.adotable1.Refresh;
      end;



ADOTable2.Insert;
ADOTable2.FieldByName('Номер заказа').AsString:=inttostr(r);
ADOTable2.FieldByName('Откуда').AsString:=ADOQuery1.Fields[1].AsString;
ADOTable2.FieldByName('Куда').AsString:=ADOQuery1.Fields[2].AsString;
ADOTable2.FieldByName('СВ место').AsString:=sEdit4.Text;
ADOTable2.FieldByName('Купе').AsString:=sEdit5.Text;
ADOTable2.FieldByName('Плацкарт').AsString:=sEdit6.Text;
ADOTable2.FieldByName('Итого').AsInteger:=strtoint(sEdit7.Text);
ADOTable2.FieldByName('Дата').AsString:=sEdit8.Text;
ADOTable2.Post;

end;

procedure Tzakaz.sBitBtn3Click(Sender: TObject);
begin
try
if Application.MessageBox('Удалить выбранный заказ?','',MB_YESNO)=IDYES then
begin
ADOTable2.Delete;
end;
except
on e:Exception do
ShowMessage('Область данных пуста');
end;
end;

procedure Tzakaz.sBitBtn4Click(Sender: TObject);
var sv,k,pl,s:integer;
str,str2:string;
begin
  try
  if sEdit4.Text='' then
  sEdit4.Text:='0';
   if sEdit5.Text='' then
  sEdit5.Text:='0';
   if sEdit6.Text='' then
  sEdit6.Text:='0';
      str:=sEdit2.Text;
      str2:=sEdit3.Text;
      str:=TRIM(str);
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add( 'Select * from Стоимость '+
      'where [Название станции отправления] Like "%'+str+'%"and'+
        ' [Название станции Прибытия] Like "%'+str2+'%"' );
     ADOQuery1.Active:=true;
   if sEdit4.Text=('') then
  sv:=0;
     if sEdit5.Text=('') then
  k:=0;
     if sEdit6.Text=('') then
  pl:=0;
  sv:=strtoint(sedit4.Text)*adoquery1.Fields[3].AsInteger;
  k:=strtoint(sedit5.Text)*adoquery1.Fields[4].AsInteger;
  pl:=strtoint(sedit6.Text)*adoquery1.Fields[5].AsInteger;
  s:=sv+k+pl;

  label7.Caption:=(inttostr(sv)+ ' руб');
  label8.Caption:=(inttostr(k)+ ' руб');
  label9.Caption:=(inttostr(pl)+ ' руб');

  sEdit7.Text:=inttostr(s);

    except
    on EConvertError do  showmessage('Не корректный тип данных');
    on EOleException do  showmessage('Заполните все поля');

    end;



    
end;

procedure Tzakaz.sBitBtn5Click(Sender: TObject);
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

procedure Tzakaz.sBitBtn6Click(Sender: TObject);
begin
form1.Show;
close;
end;



procedure Tzakaz.sBitBtn7Click(Sender: TObject);
begin
ADOTable2.Edit;
add_zakaz.show;
end;



procedure Tzakaz.sBitBtn8Click(Sender: TObject);
begin
Export2Excel(Caption,sDBGrid1.DataSource.DataSet);
end;

procedure Tzakaz.sSpeedButton1Click(Sender: TObject);
begin
ShellExecute(0, nil, 'asu.chm', nil, nil, SW_SHOWNORMAL);
end;

end.
