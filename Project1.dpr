program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Unit3.pas' {Form3},
  Unit4 in 'Unit4.pas' {Form4},
  Unit5 in 'Unit5.pas' {Form5},
  Unit7 in 'Unit7.pas' {Add_poezd},
  Unit8 in 'Unit8.pas' {add_otprav},
  Unit9 in 'Unit9.pas' {add_stan},
  Unit11 in 'Unit11.pas' {add_stoimost},
  Unit12 in 'Unit12.pas' {login},
  Unit13 in 'Unit13.pas' {Path_finding},
  Unit15 in 'Unit15.pas' {zakaz},
  Unit14 in 'Unit14.pas' {add_path},
  Unit6 in 'Unit6.pas' {add_zakaz},
  Excel in 'Excel.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '��� ���������� ���������������� �������';

  Application.CreateForm(Tlogin, login);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TAdd_poezd, Add_poezd);
  Application.CreateForm(Tadd_otprav, add_otprav);
  Application.CreateForm(Tadd_stan, add_stan);
  Application.CreateForm(Tadd_stoimost, add_stoimost);
  Application.CreateForm(TPath_finding, Path_finding);
  Application.CreateForm(Tzakaz, zakaz);
  Application.CreateForm(Tadd_path, add_path);
  Application.CreateForm(Tadd_zakaz, add_zakaz);
  Application.Run;
end.
