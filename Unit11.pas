unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, sDBEdit;

type
  Tadd_stoimost = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Button1: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    sDBEdit1: TsDBEdit;
    sDBEdit2: TsDBEdit;
    sDBEdit3: TsDBEdit;
    sDBEdit4: TsDBEdit;
    sDBEdit5: TsDBEdit;
    sDBEdit6: TsDBEdit;
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  add_stoimost: Tadd_stoimost;

implementation

uses Unit5;

{$R *.dfm}

procedure Tadd_stoimost.Button1Click(Sender: TObject);
begin
Form5.ADOTable1.Post;
close;
end;



end.
