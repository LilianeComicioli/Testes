unit uMemo;

interface

uses
   uComponente;

type
   TMemo = class(TComponente)
   public
     procedure RedimensionaComponente(AProporcaoAltura, AProporcaoLargura: Double); override;
   end;

implementation

{ TMemo }

procedure TMemo.RedimensionaComponente(AProporcaoAltura, AProporcaoLargura: Double);
begin
   Largura := Round(Largura * AProporcaoLargura);
   Altura := Round(Altura * AProporcaoAltura);

   inherited;
end;

end.
