unit uIMaquina;

interface

uses
  Classes, uTroco, System.Generics.Collections;

type
  IMaquina = interface
  ['{A5443126-D47D-4440-BAA8-2C835559E64D}']
    function MontarTroco(ATroco: Double): TList<TTroco>;
  end;

implementation

end.

