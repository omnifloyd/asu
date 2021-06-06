unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, sDBEdit;

type
  Tadd_otprav = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Button1: TButton;
    sDBEdit1: TsDBEdit;
    sDBEdit2: TsDBEdit;
    sDBEdit3: TsDBEdit;
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  add_otprav: Tadd_otprav;


implementation

uses Unit1, Unit2, Unit3;

{$R *.dfm}



procedure Tadd_otprav.Button1Click(Sender: TObject);
begin
Form3.ADOTable1.Post;
close;
end;


end.
