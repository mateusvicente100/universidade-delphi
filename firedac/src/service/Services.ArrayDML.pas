unit Services.ArrayDML;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Phys.PG, FireDAC.Phys.PGDef, FireDAC.DApt,
  VCL.Forms;

type
  TServiceArrayDML = class(TDataModule)
    mtListaTemporaria: TFDMemTable;
    Connection: TFDConnection;
    FDPhysPgDriverLink: TFDPhysPgDriverLink;
    mtListaTemporariaID: TIntegerField;
    mtListaTemporariaNOME: TStringField;
    qryClientes: TFDQuery;
    mtListaTemporariaSOBRENOME: TStringField;
    qryClientesid: TIntegerField;
    qryClientesnome: TWideStringField;
    qryClientessobrenome: TWideStringField;
  public
    procedure GerarListaTemporaria;
    procedure IncluirNormal;
    procedure ExcluirNormal;
    procedure IncluirArrayDML;
    procedure ExcluirArrayDML;
  end;

implementation

{$R *.dfm}

procedure TServiceArrayDML.ExcluirArrayDML;
var
  LQuery: TFDQuery;
begin
  LQuery := TFDQuery.Create(Self);
  qryClientes.DisableControls;
  Connection.StartTransaction;
  try
    try
      LQuery.Connection := Connection;
      LQuery.SQL.Text := 'delete from clientes where id = :id';
      LQuery.Params.ArraySize := qryClientes.RecordCount;

      qryClientes.First;
      while not qryClientes.Eof do
      begin
        LQuery.ParamByName('id').AsIntegers[Pred(qryClientes.RecNo)] := qryClientesid.AsInteger;
        qryClientes.Next;
      end;

      if (LQuery.Params.ArraySize > 0) then
        LQuery.Execute(LQuery.Params.ArraySize);

      if Connection.InTransaction then
        Connection.Commit;

      qryClientes.Close;
      qryClientes.Open();
      qryClientes.FetchAll;
    except
      on E:Exception do
      begin
        if Connection.InTransaction then
          Connection.Rollback;
        raise;
      end;
    end;
  finally
    qryClientes.EnableControls;
    LQuery.Free;
  end;
end;

procedure TServiceArrayDML.ExcluirNormal;
begin
  Connection.StartTransaction;
  qryClientes.DisableControls;
  try
    try
      qryClientes.First;
      while not qryClientes.Eof do
        qryClientes.Delete;
      qryClientes.ApplyUpdates(0);
      if Connection.InTransaction then
        Connection.Commit;
      qryClientes.Close;
      qryClientes.Open();
      qryClientes.FetchAll;
    except
      on E:Exception do
      begin
        if Connection.InTransaction then
          Connection.Rollback;
        raise;
      end;
    end;
  finally
    qryClientes.EnableControls;
  end;
end;

procedure TServiceArrayDML.GerarListaTemporaria;
var
  LListaClientes, LCliente: TStringList;
  LLine: string;
begin
  mtListaTemporaria.Close;
  mtListaTemporaria.Open;
  mtListaTemporaria.DisableControls;
  LListaClientes := TStringList.Create;
  LCliente := TStringList.Create;
  try
    LListaClientes.LoadFromFile(ExtractFileName(Application.Name) + 'lista-clientes.csv');
    for LLine in LListaClientes do
    begin
      LCliente.StrictDelimiter := True;
      LCliente.CommaText := LLine;
      mtListaTemporaria.Append;
      mtListaTemporariaID.AsInteger := LCliente[0].ToInteger;
      mtListaTemporariaNOME.AsString := LCliente[1];
      mtListaTemporariaSOBRENOME.AsString := LCliente[2];
      mtListaTemporaria.Post;
    end;
  finally
    LCliente.Free;
    LListaClientes.Free;
    mtListaTemporaria.EnableControls;
  end;
end;

procedure TServiceArrayDML.IncluirArrayDML;
var
  LQuery: TFDQuery;
begin
  LQuery := TFDQuery.Create(Self);
  mtListaTemporaria.DisableControls;
  Connection.StartTransaction;
  try
    try
      LQuery.Connection := Connection;
      LQuery.SQL.Text := 'insert into clientes (id, nome, sobrenome) values (:id, :nome, :sobrenome)';
      LQuery.Params.ArraySize := mtListaTemporaria.RecordCount;

      mtListaTemporaria.First;
      while not mtListaTemporaria.Eof do
      begin
        LQuery.ParamByName('id').AsIntegers[Pred(mtListaTemporaria.RecNo)] := mtListaTemporariaID.AsInteger;
        LQuery.ParamByName('nome').AsStrings[Pred(mtListaTemporaria.RecNo)] := mtListaTemporariaNOME.AsString;
        LQuery.ParamByName('sobrenome').AsStrings[Pred(mtListaTemporaria.RecNo)] := mtListaTemporariaSOBRENOME.AsString;
        mtListaTemporaria.Next;
      end;

      if (LQuery.Params.ArraySize > 0) then
        LQuery.Execute(LQuery.Params.ArraySize);

      if Connection.InTransaction then
        Connection.Commit;

      qryClientes.Close;
      qryClientes.Open();
      qryClientes.FetchAll;
    except
      on E:Exception do
      begin
        if Connection.InTransaction then
          Connection.Rollback;
        raise;
      end;
    end;
  finally
    mtListaTemporaria.EnableControls;
    LQuery.Free;
  end;
end;

procedure TServiceArrayDML.IncluirNormal;
begin
  Connection.StartTransaction;
  qryClientes.DisableControls;
  mtListaTemporaria.DisableControls;
  try
    try
      mtListaTemporaria.First;
      while not mtListaTemporaria.Eof do
      begin
        qryClientes.Append;
        qryClientesid.AsInteger := mtListaTemporariaID.AsInteger;
        qryClientesnome.AsString := mtListaTemporariaNOME.AsString;
        qryClientessobrenome.AsString := mtListaTemporariaSOBRENOME.AsString;
        qryClientes.Post;
        mtListaTemporaria.Next;
      end;
      qryClientes.ApplyUpdates(0);
      if Connection.InTransaction then
        Connection.Commit;
      qryClientes.Close;
      qryClientes.Open();
      qryClientes.FetchAll;
    except
      on E:Exception do
      begin
        if Connection.InTransaction then
          Connection.Rollback;
        raise;
      end;
    end;
  finally
    mtListaTemporaria.EnableControls;
    qryClientes.EnableControls;
  end;
end;

end.
