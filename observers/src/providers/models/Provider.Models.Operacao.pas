unit Provider.Models.Operacao;

interface

uses Providers.Types.TipoOperacao;

type
  TOperacao = class
  private
    FTipo: TTipoOperacao;
    FCategoria: string;
    FValor: Currency;
  public
    property Tipo: TTipoOperacao read FTipo write FTipo;
    property Categoria: string read FCategoria write FCategoria;
    property Valor: Currency read FValor write FValor;
  end;

implementation

end.
