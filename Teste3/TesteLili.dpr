program TesteLili;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {FrmTesteLili},
  uComponente in 'uComponente.pas',
  uFrame in 'uFrame.pas',
  uBotao in 'uBotao.pas',
  uMemo in 'uMemo.pas',
  uLabel in 'uLabel.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmTesteLili, FrmTesteLili);
  Application.Run;
end.
