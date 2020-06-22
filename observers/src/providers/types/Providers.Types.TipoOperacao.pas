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
      Result := 'Cr�dito';
    TTipoOperacao.Debito:
      Result := 'D�bito';
  end;
end;

end.
