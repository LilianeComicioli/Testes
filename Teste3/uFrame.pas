unit uFrame;

interface

uses
   uComponente, System.Generics.Collections;

type
   TFrame = class(TComponente)
   public
     constructor Create(AX, AY, AAltura, ALargura: Integer);
     destructor Destroy;

     procedure AdicionaComponente(AComponente: TComponente); override;
     procedure RedimensionaComponente(AProporcaoAltura, AProporcaoLargura: Double); override;
   end;

implementation

{ TFrame }

procedure TFrame.AdicionaComponente(AComponente: TComponente);
begin
  inherited;

  Inner.Add(AComponente);
end;

constructor TFrame.Create(AX, AY, AAltura, ALargura: Integer);
begin
   inherited create(AX, AY, AAltura, ALargura);

   Inner := TList<TComponente>.Create;
end;

destructor TFrame.Destroy;
begin
   Inner.Free;
end;

procedure TFrame.RedimensionaComponente(AProporcaoAltura, AProporcaoLargura: Double);
var
   mComponente : TComponente;
begin
   for mComponente in Inner do
   begin
      if mComponente is TFrame then
      begin
         Largura := Round(Largura * AProporcaoLargura);
         Altura := Round(Altura * AProporcaoAltura);
      end
      else
         mComponente.RedimensionaComponente(AProporcaoAltura, AProporcaoLargura);
   end;
end;

end.
