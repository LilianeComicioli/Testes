unit uBotao;

interface

uses
   uComponente;

type
   TBotao = class(TComponente)
   private
   public
     procedure RedimensionaComponente(AProporcaoAltura, AProporcaoLargura: Double); override;
   end;

implementation

{ TBotao }

procedure TBotao.RedimensionaComponente(AProporcaoAltura, AProporcaoLargura: Double);
begin
   Largura := Round(Largura * AProporcaoLargura);
   inherited;
end;

end.
