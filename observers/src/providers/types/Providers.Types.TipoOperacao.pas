unit Providers.Types.TipoOperacao;

interface

type
{$SCOPEDENUMS ON}
  TTipoOperacao = (Credito, Debito);
{$SCOPEDENUMS OFF}

  TTipoOpercaoHelper = record helper for TTipoOperacao
    function ToString: string;
  end;

implementation

function TTipoOpercaoHelper.ToString: string;
begin
  case Self of
    TTipoOperacao.Credito:
      Result := 'Crédito';
    TTipoOperacao.Debito:
      Result := 'Débito';
  end;
end;

end.
