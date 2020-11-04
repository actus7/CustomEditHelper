unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.StdCtrls, Vcl.TCustomEditHelper;

type
  TForm2 = class(TForm)
    edtNormal: TEdit;
    edtMask: TMaskEdit;
    procedure edtNormalExit(Sender: TObject);
    procedure edtMaskExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.edtNormalExit(Sender: TObject);
begin
  if edtNormal.Text <> edtNormal.OldValue then
    ShowMessage('É diferente');
end;

procedure TForm2.edtMaskExit(Sender: TObject);
begin
  if edtMask.Text <> edtMask.OldValue then
    ShowMessage('É diferente');
end;


end.
