unit uMaquina;

interface

uses
  uIMaquina, uTroco, System.Generics.Collections;

type

  TMaquina = class(TInterfacedObject, IMaquina)
  public
    function MontarTroco(ATroco: Double): TList<TTroco>;
    class function New : IMaquina;
  end;

implementation

function TMaquina.MontarTroco(ATroco: Double): TList<TTroco>;
var
  ListaTroco : TList<TTroco>;
  Cedula : TCedula;
  QtdeCedula: Integer;
  ValorCedula: Double;
  Troco: TTroco;
begin
   ListaTroco := TList<TTroco>.Create;

   for Cedula := Low(TCedula) to High(TCedula) do
   begin
      QtdeCedula := 0;
      ValorCedula := Cedula.ToDouble;

      while ATroco >= ValorCedula do
      begin
        ATroco := ATroco - ValorCedula;
        Inc(QtdeCedula);
      end;

      if QtdeCedula > 0 then
      begin
         Troco := TTroco.Create(Cedula, QtdeCedula);
         ListaTroco.Add(Troco);
      end;
   end;

   Result := ListaTroco;
end;

class function TMaquina.New: IMaquina;
begin
   Result := Create;
end;

end.

