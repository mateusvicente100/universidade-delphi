unit Services.HandlingErrors;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG, FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client;

type
  TServiceHandlingErrors = class(TDataModule)
    Connection: TFDConnection;
    FDPhysPgDriverLink: TFDPhysPgDriverLink;
  private
    procedure HandlerExeception(const AException: Exception);
  public
    procedure PrimaryKeyError;
    procedure FieldRequiredError;
  end;

implementation

{$R *.dfm}

procedure TServiceHandlingErrors.FieldRequiredError;
var
  LQuery: TFDQuery;
begin
  LQuery := TFDQuery.Create(Self);
  try
    try
      LQuery.Connection := Connection;
      LQuery.SQL.Text := 'insert into clientes (id, nome) values (1, ''Mateus Vicente'')';
      LQuery.ExecSQL;
    except
      on E:Exception do
        HandlerExeception(E);
    end;
  finally
    LQuery.Free;
  end;
end;

procedure TServiceHandlingErrors.HandlerExeception(const AException: Exception);
begin
  if not AException.InheritsFrom(EFDDBEngineException) then
    raise AException;
  case EFDDBEngineException(AException).Kind of
    ekUKViolated:
      raise Exception.Create('Não foi possível incluir, pois houve uma violação de chave primária no banco de dados.');
    ekOther:
      raise Exception.Create('Ocorreu um erro não identificado no banco de dados.');
  end;
end;

procedure TServiceHandlingErrors.PrimaryKeyError;
var
  LQuery: TFDQuery;
begin
  LQuery := TFDQuery.Create(Self);
  try
    try
      LQuery.Connection := Connection;
      LQuery.SQL.Text := 'insert into clientes (id, nome, sobrenome) values (1, ''Mateus'', ''Vicente'')';
      LQuery.ExecSQL;
    except
      on E:Exception do
        HandlerExeception(E);
    end;
  finally
    LQuery.Free;
  end;
end;

end.
