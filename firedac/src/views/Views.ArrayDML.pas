unit Views.ArrayDML;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, dxGDIPlusClasses, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Services.ArrayDML, System.DateUtils;

type
  TFrmArrayDML = class(TForm)
    pnlToolbar: TPanel;
    dsListaTemporaria: TDataSource;
    DBGridListaTemporaria: TDBGrid;
    lblRegistros: TLabel;
    btnGerarListaTemporaria: TButton;
    btnIncluirNormal: TButton;
    btnIncluirArrayDML: TButton;
    dsClientes: TDataSource;
    btnExcluirArrayDML: TButton;
    btnExcluirNormal: TButton;
    Label4: TLabel;
    memLog: TMemo;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnGerarListaTemporariaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirNormalClick(Sender: TObject);
    procedure btnExcluirNormalClick(Sender: TObject);
    procedure btnIncluirArrayDMLClick(Sender: TObject);
    procedure btnExcluirArrayDMLClick(Sender: TObject);
  private
    FService: TServiceArrayDML;
    procedure Log(const AOperacao: string; const AStartTime: TDateTime);
  end;

implementation

{$R *.dfm}

procedure TFrmArrayDML.btnGerarListaTemporariaClick(Sender: TObject);
begin
  FService.GerarListaTemporaria;
  lblRegistros.Caption := FService.mtListaTemporaria.RecordCount.ToString + ' Registros';
end;

procedure TFrmArrayDML.btnIncluirNormalClick(Sender: TObject);
var
  LStart: TDateTime;
begin
  LStart := Now;
  FService.IncluirNormal;
  Log('Incluir normal', LStart);
end;

procedure TFrmArrayDML.btnIncluirArrayDMLClick(Sender: TObject);
var
  LStart: TDateTime;
begin
  LStart := Now;
  FService.IncluirArrayDML;
  Log('Incluir array DML', LStart);
end;

procedure TFrmArrayDML.btnExcluirArrayDMLClick(Sender: TObject);
var
  LStart: TDateTime;
begin
  LStart := Now;
  FService.ExcluirArrayDML;
  Log('Exclusão array DML', LStart);
end;

procedure TFrmArrayDML.btnExcluirNormalClick(Sender: TObject);
var
  LStart: TDateTime;
begin
  LStart := Now;
  FService.ExcluirNormal;
  Log('Exclusão normal', LStart);
end;

procedure TFrmArrayDML.FormCreate(Sender: TObject);
begin
  FService := TServiceArrayDML.Create(Self);
  dsListaTemporaria.DataSet := FService.mtListaTemporaria;
  dsClientes.DataSet := FService.qryClientes;
end;

procedure TFrmArrayDML.FormDestroy(Sender: TObject);
begin
  FService.Free;
end;

procedure TFrmArrayDML.FormShow(Sender: TObject);
begin
  FService.qryClientes.Open();
end;

procedure TFrmArrayDML.Log(const AOperacao: string; const AStartTime: TDateTime);
begin
  memLog.Lines.Add(Format('%s: %d segundos | %d milissegundos',
    [AOperacao, SecondsBetween(Now, AStartTime), MilliSecondsBetween(Now, AStartTime)]));
end;

end.
