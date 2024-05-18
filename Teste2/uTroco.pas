unit uTroco;

interface

type
   TCedula = (ceNota100, ceNota50, ceNota20, ceNota10, ceNota5, ceNota2,
              ceMoeda100, ceMoeda50, ceMoeda25, ceMoeda10, ceMoeda5, ceMoeda1);

   TCedulaHelper = record Helper for TCedula
      function ToDouble : Double;
      function ToString : String;
      function GetTipo(AQuantidade: integer) : String;
   end;

   TTroco = class
   private
     FTipo: TCedula;
     FQuantidade: Integer;
   public
     constructor Create(ATipo: TCedula; AQuantidade: Integer);

     property Tipo: TCedula read FTipo;
     property Quantidade: Integer read FQuantidade write FQuantidade;
   end;

implementation

{ TTroco }

constructor TTroco.Create(ATipo: TCedula; AQuantidade: Integer);
begin
   FTipo := ATipo;
   FQuantidade := AQuantidade;
end;

{ TCedulaHelper }

function TCedulaHelper.GetTipo(AQuantidade: integer): String;
begin
   case Self of
      ceNota100 : result := 'nota';
      ceNota50 : result := 'nota';
      ceNota20 : result := 'nota';
      ceNota10 : result := 'nota';
      ceNota5 : result := 'nota';
      ceNota2 : result := 'nota';
      ceMoeda100 : result := 'moeda';
      ceMoeda50 : result := 'moeda';
      ceMoeda25 : result := 'moeda';
      ceMoeda10 : result := 'moeda';
      ceMoeda5 : result := 'moeda';
      ceMoeda1 : result := 'moeda';
   end;

   if AQuantidade > 1 then
      result := result + 's';
end;

function TCedulaHelper.ToDouble: Double;
begin
   case Self of
      ceNota100 : result := 100;
      ceNota50 : result := 50;
      ceNota20 : result := 20;
      ceNota10 : result := 10;
      ceNota5 : result := 5;
      ceNota2 : result := 2;
      ceMoeda100 : result := 1;
      ceMoeda50 : result := 0.50;
      ceMoeda25 : result := 0.25;
      ceMoeda10 : result := 0.10;
      ceMoeda5 : result := 0.05;
      ceMoeda1 : result := 0.01;
   end;
end;

function TCedulaHelper.ToString: String;
begin
   case Self of
      ceNota100 : result := '100';
      ceNota50 : result := '50';
      ceNota20 : result := '20';
      ceNota10 : result := '10';
      ceNota5 : result := '5';
      ceNota2 : result := '2';
      ceMoeda100 : result := '1';
      ceMoeda50 : result := '0.50';
      ceMoeda25 : result := '0.25';
      ceMoeda10 : result := '0.10';
      ceMoeda5 : result := '0.05';
      ceMoeda1 : result := '0.01';
   end;
end;

end.
