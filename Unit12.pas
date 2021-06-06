unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sEdit, sButton, Buttons, sBitBtn, sSpeedButton;

type
  Tlogin = class(TForm)
    sButton1: TsButton;
    sEdit1: TsEdit;
    Label1: TLabel;
    sSpeedButton1: TsSpeedButton;
    procedure sButton1Click(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  login: Tlogin;

implementation

uses Unit1, Unit2, Unit3, Unit4, Unit5, Unit13, Unit15;

{$R *.dfm}

procedure Tlogin.sButton1Click(Sender: TObject);
begin
if sedit1.Text= '111'   then
begin
form1.Show;
login.Visible:=false;

  form1.sBitBtn5.Enabled:=true;

  form2.sbitbtn1.enabled:=true;
  form2.sbitbtn2.enabled:=true;
  form2.sbitbtn3.enabled:=true;


  form3.sbitbtn1.enabled:=true;
  form3.sbitbtn2.enabled:=true;
  form3.sbitbtn3.enabled:=true;


  form4.sbitbtn1.enabled:=true;
  form4.sbitbtn2.enabled:=true;
  form4.sbitbtn3.enabled:=true;


  form5.sbitbtn1.enabled:=true;
  form5.sbitbtn2.enabled:=true;
  form5.sbitbtn3.enabled:=true;


  path_finding.sbitbtn1.enabled:=true;
  path_finding.sbitbtn2.enabled:=true;
  path_finding.sbitbtn6.enabled:=true;


  //Ёкспорт
  form2.sBitBtn6.Enabled:=true;
  form3.sBitBtn6.Enabled:=true;
  form4.sBitBtn6.Enabled:=true;
  form5.sBitBtn6.Enabled:=true;
  path_finding.sBitBtn6.Enabled:=true;
  zakaz.sBitBtn8.Enabled:=true;


end
else
if sedit1.Text='222' then
begin
form1.Show;
login.Visible:=false;

  form1.sBitBtn5.Enabled:=false;

  form2.sbitbtn1.enabled:=false;
  form2.sbitbtn2.enabled:=false;
  form2.sbitbtn3.enabled:=false;


  form3.sbitbtn1.enabled:=false;
  form3.sbitbtn2.enabled:=false;
  form3.sbitbtn3.enabled:=false;


  form4.sbitbtn1.enabled:=false;
  form4.sbitbtn2.enabled:=false;
  form4.sbitbtn3.enabled:=false;


  form5.sbitbtn1.enabled:=false;
  form5.sbitbtn2.enabled:=false;
  form5.sbitbtn3.enabled:=false;


  path_finding.sbitbtn1.enabled:=false;
  path_finding.sbitbtn2.enabled:=false;
  path_finding.sbitbtn6.enabled:=false;


  //Ёкспорт
  form2.sBitBtn6.Enabled:=false;
  form3.sBitBtn6.Enabled:=false;
  form4.sBitBtn6.Enabled:=false;
  form5.sBitBtn6.Enabled:=false;
  path_finding.sBitBtn6.Enabled:=false;
  zakaz.sBitBtn8.Enabled:=false;


end
else
showmessage('ѕароль неверный');
end;



procedure Tlogin.sSpeedButton1Click(Sender: TObject);
begin
application.Terminate;
end;

end.
