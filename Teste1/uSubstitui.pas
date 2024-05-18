unit uSubstitui;

interface

uses
  uISubstitui,System.Generics.Collections, SysUtils;

type

  TSubstitui = class(TInterfacedObject, ISubstitui)
  public
    function Substituir(AString, AVelha, ANova: String): String;
    class function New : ISubstitui;

  end;

implementation

class function TSubstitui.New: ISubstitui;
begin
   Result := Create;
end;

function TSubstitui.Substituir(AString, AVelha, ANova: String): String;
var
  i, j: Integer;
  Palavra: String;
  ListaPalavras : TArray<String>;
  Busca: String;
begin
   Result := '';

   ListaPalavras := AString.Trim.Split([' ']);
   for Palavra in ListaPalavras do
   begin
      Busca := '';
      i := 1;
      j := 1;
      while i <= Length(Palavra) do
      begin
         for j := 1 to Length(AVelha) do
           Busca := Busca + Palavra[j];

         if UpperCase(Busca) = UpperCase(AVelha) then
         begin
           Result := Result + ANova;
           i := j;
         end
         else
         begin
           Result := Result + Palavra[i];
           inc(i);
         end;
      end;
      Result := Result + ' ';
   end;
end;

end.

