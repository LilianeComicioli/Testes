program Teste1;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {Form1},
  uSubstitui in 'uSubstitui.pas',
  uISubstitui in 'uISubstitui.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
