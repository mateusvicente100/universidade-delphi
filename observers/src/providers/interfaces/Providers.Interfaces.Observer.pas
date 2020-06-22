unit Providers.Interfaces.Observer;

interface

uses Provider.Models.Operacao;

type
  IObserver = interface
    procedure OnNewOperation(const AOperacao: TOperacao);
  end;

implementation

end.
