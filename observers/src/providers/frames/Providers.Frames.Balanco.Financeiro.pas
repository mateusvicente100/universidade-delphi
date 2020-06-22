unit Providers.Frames.Balanco.Financeiro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Providers.Interfaces.Observer,
  Provider.Models.Operacao, Providers.Types.TipoOperacao;

type
  TFrameBalancoFinanceiro = class(TFrame, IObserver)
    pnlHeader: TPanel;
    pnlContent: TPanel;
    lblCreditos: TLabel;
    lblValorCredito: TLabel;
    lblDebitos: TLabel;
    lblValorDebito: TLabel;
    Shape1: TShape;
    lblSaldo: TLabel;
    lblValorSaldo: TLabel;
  private
    FCreditos: Currency;
    FDebitos: Currency;
  public
    procedure OnNewOperation(const AOperacao: TOperacao);
  end;

implementation

{$R *.dfm}

procedure TFrameBalancoFinanceiro.OnNewOperation(const AOperacao: TOperacao);
begin
  if AOperacao.Tipo = TTipoOperacao.Credito then
    FCreditos := FCreditos + AOperacao.Valor
  else if AOperacao.Tipo = TTipoOperacao.Debito then
    FDebitos := FDebitos + AOperacao.Valor;
  lblValorCredito.Caption := FormatFloat(',0.00;', FCreditos);
  lblValorDebito.Caption := FormatFloat(',0.00;', FDebitos);
  lblValorSaldo.Caption := FormatFloat(',0.00;', FCreditos - FDebitos);
end;

end.
