unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, RxToolEdit, RxCurrEdit, Vcl.StdCtrls,
  System.Generics.Collections, uMaquina, uTroco;

type
  TForm1 = class(TForm)
    MemoTroco: TMemo;
    BtnCalcular: TButton;
    Label1: TLabel;
    EdtTroco: TCurrencyEdit;
    procedure BtnCalcularClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdtTrocoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BtnCalcularClick(Sender: TObject);
var
   ListaTroco: TList<TTroco>;
   Troco: TTroco;
begin
   if EdtTroco.Value = 0 then
   begin
      ShowMessage('Favor informar o valor a ser calculado!');
      EdtTroco.SetFocus;
      Exit;
   end;

   ListaTroco := TMaquina.New.MontarTroco(EdtTroco.Value);
   try
      MemoTroco.Lines.Clear;

      for Troco in ListaTroco do
         MemoTroco.Lines.Add(IntToStr(Troco.Quantidade) + ' ' +
                             Troco.Tipo.GetTipo(Troco.Quantidade) + ' de ' +
                             Troco.Tipo.ToString);
   finally
     ListaTroco.Free;
   end;
end;

procedure TForm1.EdtTrocoKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      BtnCalcular.SetFocus;
      if BtnCalcular.Focused then
         BtnCalcularClick(Sender)
      else
      begin
         Key := #0;
         Perform(Wm_NextDlgCtl,0,0);
      end;
   end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
   EdtTroco.SetFocus;
end;

end.
