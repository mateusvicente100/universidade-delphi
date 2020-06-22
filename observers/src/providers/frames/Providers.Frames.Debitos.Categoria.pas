unit Providers.Frames.Debitos.Categoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Providers.Interfaces.Observer, Provider.Models.Operacao, Providers.Types.TipoOperacao;

type
  TFrameDebitoCategoria = class(TFrame, IObserver)
    pnlHeader: TPanel;
    DBGridDebitos: TDBGrid;
    dsDebitos: TDataSource;
    mtDebitos: TFDMemTable;
    mtDebitosCATEGORIA: TStringField;
    mtDebitosVALOR: TCurrencyField;
  public
    constructor Create(AOwner: TComponent); override;
    procedure OnNewOperation(const AOperacao: TOperacao);
  end;

implementation

{$R *.dfm}

constructor TFrameDebitoCategoria.Create(AOwner: TComponent);
begin
  inherited;
  mtDebitos.Open;
end;

procedure TFrameDebitoCategoria.OnNewOperation(const AOperacao: TOperacao);
begin
  if (AOperacao.Tipo = TTipoOperacao.Credito) then
    Exit;
  if mtDebitos.Locate('CATEGORIA', AOperacao.Categoria) then
  begin
    mtDebitos.Edit;
    mtDebitosVALOR.AsCurrency := mtDebitosVALOR.AsCurrency + AOperacao.Valor;
    mtDebitos.Post;
  end
  else
    mtDebitos.AppendRecord([AOperacao.Categoria, AOperacao.Valor]);
end;

end.
