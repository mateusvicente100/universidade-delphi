unit Providers.Frames.Operacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Providers.Interfaces.Subject, System.Generics.Collections,
  Providers.Interfaces.Observer, Provider.Models.Operacao, Providers.Types.TipoOperacao;

type
  TFrameOperacao = class(TFrame, ISubject)
    pnlHeader: TPanel;
    pnlContent: TPanel;
    lblTipo: TLabel;
    lblCategoria: TLabel;
    lblValor: TLabel;
    line: TShape;
    cbxTipo: TComboBox;
    cbxCategoria: TComboBox;
    edtValor: TEdit;
    btnAdicionar: TButton;
    DBGridOperacoes: TDBGrid;
    dsOperacoes: TDataSource;
    mtOperacoes: TFDMemTable;
    mtOperacoesOPERACAO: TStringField;
    mtOperacoesCATEGORIA: TStringField;
    mtOperacoesVALOR: TCurrencyField;
    procedure btnAdicionarClick(Sender: TObject);
  private
    FObservers: TList<IObserver>;
  public
    constructor Create(AOwner: TComponent); override;
    procedure AdicionarObserver(const AObserver: IObserver);
    procedure RemoverObserver(const AObserver: IObserver);
    procedure Notificar;
    destructor Destroy; override;
  end;

implementation

{$R *.dfm}

procedure TFrameOperacao.AdicionarObserver(const AObserver: IObserver);
begin
  FObservers.Add(AObserver);
end;

procedure TFrameOperacao.btnAdicionarClick(Sender: TObject);
begin
  Notificar;
end;

constructor TFrameOperacao.Create(AOwner: TComponent);
begin
  inherited;
  FObservers := TList<IObserver>.Create;
  mtOperacoes.Open;
end;

destructor TFrameOperacao.Destroy;
begin
  FObservers.Free;
  inherited;
end;

procedure TFrameOperacao.Notificar;
var
  LOperacao: TOperacao;
  LObserver: IObserver;
begin
  LOperacao := TOperacao.Create;
  try
    LOperacao.Tipo := TTipoOperacao(cbxTipo.ItemIndex);
    LOperacao.Categoria := cbxCategoria.Text;
    LOperacao.Valor := StrToCurrDef(edtValor.Text, 0);

    mtOperacoes.Append;
    mtOperacoesOPERACAO.AsString := LOperacao.Tipo.ToString;
    mtOperacoesVALOR.AsCurrency := LOperacao.Valor;
    mtOperacoesCATEGORIA.AsString := LOperacao.Categoria;
    mtOperacoes.Post;

    for LObserver in FObservers do
      LObserver.OnNewOperation(LOperacao);
  finally
    LOperacao.Free;
  end;
end;

procedure TFrameOperacao.RemoverObserver(const AObserver: IObserver);
begin
  FObservers.Delete(FObservers.IndexOf(AObserver));
end;

end.
