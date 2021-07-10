unit Services.Pagination;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG, FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TServicePagination = class(TDataModule)
    Connection: TFDConnection;
    FDPhysPgDriverLink: TFDPhysPgDriverLink;
    qryClientes: TFDQuery;
    qryClientesid: TIntegerField;
    qryClientesnome: TWideStringField;
    qryClientessobrenome: TWideStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    FRecordCount: Integer;
    procedure List(const ASkip: Integer);
  public
    procedure SetLimit(const AValue: Integer);
    procedure Next;
    procedure Previous;
    procedure Last;
    procedure First;
  end;

implementation

{$R *.dfm}

procedure TServicePagination.DataModuleCreate(Sender: TObject);
var
  LQuery: TFDQuery;
begin
  qryClientes.FetchOptions.RecsSkip := 0;
  LQuery := TFDQuery.Create(Self);
  try
    LQuery.Connection := Connection;
    LQuery.SQL.Text := 'select count(id) from clientes';
    LQuery.Open();
    FRecordCount := LQuery.FieldByName('count').AsInteger;
  finally
    LQuery.Free;
  end;
end;

procedure TServicePagination.First;
begin
  List(0);
end;

procedure TServicePagination.Last;
begin
  List(FRecordCount - qryClientes.FetchOptions.RecsMax);
end;

procedure TServicePagination.List(const ASkip: Integer);
begin
  qryClientes.Disconnect;
  qryClientes.FetchOptions.RecsSkip := ASkip;
  if (ASkip >= FRecordCount) then
    qryClientes.FetchOptions.RecsSkip := FRecordCount - qryClientes.FetchOptions.RecsMax;
  qryClientes.Open();
end;

procedure TServicePagination.Next;
begin
  List(qryClientes.FetchOptions.RecsSkip + qryClientes.FetchOptions.RowsetSize);
end;

procedure TServicePagination.Previous;
begin
  List(qryClientes.FetchOptions.RecsSkip - qryClientes.FetchOptions.RowsetSize);
end;

procedure TServicePagination.SetLimit(const AValue: Integer);
begin
  qryClientes.Close;
  qryClientes.FetchOptions.RecsMax := AValue;
  qryClientes.Open();
end;

end.
