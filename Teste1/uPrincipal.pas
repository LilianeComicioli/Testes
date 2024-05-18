unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    LblTextoOriginal: TLabel;
    EdtVelha: TEdit;
    EdtNova: TEdit;
    BtnSubstituir: TButton;
    Label1: TLabel;
    Label2: TLabel;
    EdtTextoOriginal: TEdit;
    Label3: TLabel;
    EdtTextoAtualizado: TEdit;
    procedure BtnSubstituirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
   uSubstitui;

procedure TForm1.BtnSubstituirClick(Sender: TObject);
begin
   EdtTextoAtualizado.Text := '';

   if (Trim(EdtTextoOriginal.Text) = '') or
      (Trim(EdtVelha.Text) = '') or
      (Trim(EdtNova.Text) = '') then
      Exit;

   EdtTextoAtualizado.Text := TSubstitui.New.Substituir(EdtTextoOriginal.Text,
                                                        Trim(EdtVelha.Text),
                                                        Trim(EdtNova.Text));
end;

procedure TForm1.FormShow(Sender: TObject);
begin
   EdtVelha.SetFocus;
end;

end.
