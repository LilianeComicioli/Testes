program Teste2;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {Form1},
  uIMaquina in 'uIMaquina.pas',
  uMaquina in 'uMaquina.pas',
  uTroco in 'uTroco.pas';


begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
