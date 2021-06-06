unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, sDBEdit;

type
  Tadd_zakaz = class(TForm)
    sDBEdit2: TsDBEdit;
    sDBEdit3: TsDBEdit;
    sDBEdit4: TsDBEdit;
    sDBEdit5: TsDBEdit;
    sDBEdit6: TsDBEdit;
    sDBEdit7: TsDBEdit;
    sDBEdit1: TsDBEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  add_zakaz: Tadd_zakaz;

implementation

uses Unit15;

{$R *.dfm}

procedure Tadd_zakaz.Button1Click(Sender: TObject);
begin
zakaz.adotable2.post;
close;
end;

end.
