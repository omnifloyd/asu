unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, sDBEdit;

type
  Tadd_stan = class(TForm)
    Label1: TLabel;
    Label8: TLabel;
    Button1: TButton;
    sDBEdit1: TsDBEdit;
    sDBEdit2: TsDBEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  add_stan: Tadd_stan;

implementation

uses Unit1, Unit2, Unit4;

{$R *.dfm}

procedure Tadd_stan.Button1Click(Sender: TObject);
begin
Form4.ADOTable1.Post;
close;
end;



end.
