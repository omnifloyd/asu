unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls;

type
  TForm10 = class(TForm)
    Button1: TButton;
    DBEdit1: TDBEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

uses Unit6;

{$R *.dfm}

procedure TForm10.Button1Click(Sender: TObject);
begin
Form6.ADOQuery1.Post;
close;

end;

end.
