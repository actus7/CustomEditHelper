program CustomEditHelper;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {Form2},
  Vcl.TCustomEditHelper in 'Vcl.TCustomEditHelper.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
