unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
   TFrmTesteLili = class(TForm)
    BtnExecutar: TButton;
    procedure BtnExecutarClick(Sender: TObject);
   end;

var
  FrmTesteLili: TFrmTesteLili;

implementation

{$R *.dfm}

uses
   uFrame, uBotao, uMemo, uLabel;

procedure TFrmTesteLili.BtnExecutarClick(Sender: TObject);
var
   mFramePrincipal: TFrame;
   mFrameSecundario: TFrame;
   mBotao: TBotao;
   mMemo: TMemo;
   mLabel: TLabel;
begin
   try
      mFramePrincipal := TFrame.Create(10,20,200,300);
      mFrameSecundario := TFrame.Create(11,21,50,50);
      mBotao := TBotao.Create(15,25,25,50);
      mMemo := TMemo.Create(15,30,200,200);
      mLabel := TLabel.Create(15,35,100,100);

      mFramePrincipal.AdicionaComponente(mFrameSecundario);
      mFramePrincipal.AdicionaComponente(mBotao);
      mFramePrincipal.AdicionaComponente(mMemo);
      mFramePrincipal.AdicionaComponente(mLabel);

      mFramePrincipal.Altura := 300;
      mFramePrincipal.Largura := 400;
      mFramePrincipal.RedimensionaComponente(mFramePrincipal.Altura/200, mFramePrincipal.Largura/300);
   Finally
      mFramePrincipal.Free;
   end;
end;

end.



