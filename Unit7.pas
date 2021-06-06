unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, sDBEdit;

type
  TAdd_poezd = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
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
  Add_poezd: TAdd_poezd;
  str:string;

implementation

uses Unit1, Unit2, Unit4;

{$R *.dfm}

procedure TAdd_poezd.Button1Click(Sender: TObject);
begin
Form2.ADOTable1.Post;
close;
end;

end.
