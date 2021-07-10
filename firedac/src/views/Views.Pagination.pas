unit Views.Pagination;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons,
  Services.Pagination;

type
  TFrmPagination = class(TForm)
    pnlToolbar: TPanel;
    Label2: TLabel;
    DBGridClientes: TDBGrid;
    dsClientes: TDataSource;
    pnlFooterPesquisa: TPanel;
    pnlPaginacao: TPanel;
    btnNext: TSpeedButton;
    lblPaginas: TLabel;
    btnLast: TSpeedButton;
    btnPrevious: TSpeedButton;
    btnFirst: TSpeedButton;
    pnlRegistrosPagina: TPanel;
    lblRegistrosPagina: TLabel;
    cbxRegistrosPagina: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnPreviousClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbxRegistrosPaginaChange(Sender: TObject);
  private
    FService: TServicePagination;
  end;

implementation

{$R *.dfm}

procedure TFrmPagination.btnFirstClick(Sender: TObject);
begin
  FService.First;
end;

procedure TFrmPagination.btnLastClick(Sender: TObject);
begin
   FService.Last;
end;

procedure TFrmPagination.btnNextClick(Sender: TObject);
begin
  FService.Next;
end;

procedure TFrmPagination.btnPreviousClick(Sender: TObject);
begin
  FService.Previous;
end;

procedure TFrmPagination.cbxRegistrosPaginaChange(Sender: TObject);
begin
  FService.SetLimit(StrToIntDef(cbxRegistrosPagina.Text, 50));
end;

procedure TFrmPagination.FormCreate(Sender: TObject);
begin
  FService := TServicePagination.Create(Self);
  FService.SetLimit(StrToIntDef(cbxRegistrosPagina.Text, 50));
  dsClientes.DataSet := FService.qryClientes;
end;

procedure TFrmPagination.FormDestroy(Sender: TObject);
begin
  FService.Free;
end;

procedure TFrmPagination.FormShow(Sender: TObject);
begin
  FService.First;
end;

end.
