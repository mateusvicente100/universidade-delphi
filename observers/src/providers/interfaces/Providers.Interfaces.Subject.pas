unit Providers.Interfaces.Subject;

interface

uses Providers.Interfaces.Observer;

type
  ISubject = interface
    procedure AdicionarObserver(const AObserver: IObserver);
    procedure RemoverObserver(const AObserver: IObserver);
    procedure Notificar;
  end;

implementation

end.
