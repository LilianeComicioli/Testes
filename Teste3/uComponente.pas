unit uComponente;

interface
uses
   System.SysUtils,System.Generics.Collections;

type
   TComponente = class
   private
     FX: Integer;
     FY: Integer;
     FAltura: Integer;
     FLargura: Integer;
     FInner: TList<TComponente>;
     FValor: String;
     function GetX: Integer;
     procedure SetX(const Value: Integer);
     function GetY: Integer;
     procedure SetY(const Value: Integer);
     function GetAltura: Integer;
     procedure SetAltura(const Value: Integer);
     function GetLargura: Integer;
     procedure SetLargura(const Value: Integer);
     function GetValor: String;
     procedure SetValor(const Value: String);
     function GetInner: TList<TComponente>;
     procedure SetInner(const Value: TList<TComponente>);
   public
     constructor Create(AX, AY, AAltura, ALargura: Integer);

     procedure AdicionaComponente(AComponente: TComponente); virtual; abstract;
     procedure RedimensionaComponente(AProporcaoAltura, AProporcaoLargura: Double); virtual;
     property X: Integer read GetX write SetX;
     property Y: Integer read GetY write SetY;
     property Altura: Integer read GetAltura write SetAltura;
     property Largura: Integer read GetLargura write SetLargura;
     property Valor: String read GetValor write SetValor;
     property Inner: TList<TComponente> read GetInner write SetInner;
   end;

implementation

{ TComponente }

constructor TComponente.Create(AX, AY, AAltura, ALargura: Integer);
begin
   FX := AX;
   FY := AY;
   FAltura := AAltura;
   FLargura := ALargura;
end;

function TComponente.GetAltura: Integer;
begin
   Result := FAltura;
end;

function TComponente.GetInner: TList<TComponente>;
begin
   Result := FInner;
end;

function TComponente.GetLargura: Integer;
begin
   Result := FLargura;
end;

function TComponente.GetValor: String;
begin
   Result := FValor;
end;

function TComponente.GetX: Integer;
begin
   Result := FX;
end;


function TComponente.GetY: Integer;
begin
   Result := FY;
end;

procedure TComponente.RedimensionaComponente(AProporcaoAltura, AProporcaoLargura: Double);
begin
  FX := Round(FX * AProporcaoLargura);
  FY := Round(FY * AProporcaoAltura);
end;

procedure TComponente.SetAltura(const Value: integer);
begin
   FAltura := Value;
end;

procedure TComponente.SetInner(const Value: TList<TComponente>);
begin
   FInner := Value;
end;

procedure TComponente.SetLargura(const Value: integer);
begin
   FLargura := Value;
end;

procedure TComponente.SetValor(const Value: String);
begin
   FValor := Value;
end;

procedure TComponente.SetX(const Value: integer);
begin
   FX := Value;
end;

procedure TComponente.SetY(const Value: integer);
begin
   FY := Value;
end;

end.
