unit Views.MainMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Menus, System.JSON;

type
  TfrmMainMenu = class(TForm)
    pnlHeader: TPanel;
    memoJSON: TMemo;
    gridProdutos: TDBGrid;
    pnlContent: TPanel;
    Label1: TLabel;
    edtCodigo: TDBEdit;
    edtNome: TDBEdit;
    lblNome: TLabel;
    edtPreco: TDBEdit;
    lblPreco: TLabel;
    btnIncluir: TSpeedButton;
    btnAlterar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnSalvar: TSpeedButton;
    mtProdutos: TFDMemTable;
    mtProdutosID: TIntegerField;
    mtProdutosNOME: TStringField;
    mtProdutosVALOR: TFloatField;
    dsProdutos: TDataSource;
    PopupMenu: TPopupMenu;
    ExportarItem1: TMenuItem;
    ExportarLista1: TMenuItem;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure dsProdutosStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ExportarItem1Click(Sender: TObject);
    procedure ExportarLista1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMainMenu: TfrmMainMenu;

implementation

{$R *.dfm}

procedure TfrmMainMenu.btnAlterarClick(Sender: TObject);
begin
  mtProdutos.Edit;
end;

procedure TfrmMainMenu.btnCancelarClick(Sender: TObject);
begin
  mtProdutos.Cancel;
end;

procedure TfrmMainMenu.btnExcluirClick(Sender: TObject);
begin
  mtProdutos.Delete;
end;

procedure TfrmMainMenu.btnIncluirClick(Sender: TObject);
begin
  mtProdutos.Append;
end;

procedure TfrmMainMenu.btnSalvarClick(Sender: TObject);
begin
  mtProdutos.Post;
end;

procedure TfrmMainMenu.dsProdutosStateChange(Sender: TObject);
begin
  btnCancelar.Visible := (dsProdutos.State in dsEditModes);
  btnSalvar.Visible := btnCancelar.Visible;
  btnAlterar.Visible := not(btnCancelar.Visible);
  btnExcluir.Visible := not(btnCancelar.Visible);
  btnIncluir.Visible := not(btnCancelar.Visible);
end;

procedure TfrmMainMenu.ExportarItem1Click(Sender: TObject);
var
  LJSONProduto: TJSONObject;
begin
  LJSONProduto := TJSONObject.Create;
  try
    LJSONProduto.AddPair(mtProdutosID.FieldName.ToLower, TJSONNumber.Create(mtProdutosID.AsInteger));
    LJSONProduto.AddPair(mtProdutosNOME.FieldName.ToLower, mtProdutosNOME.AsString);
    LJSONProduto.AddPair(mtProdutosVALOR.FieldName.ToLower, TJSONNumber.Create(mtProdutosVALOR.AsFloat));
    memoJSON.Text := LJSONProduto.ToString;
  finally
    LJSONProduto.Free;
  end;
end;

procedure TfrmMainMenu.ExportarLista1Click(Sender: TObject);
var
  LProdutos: TJSONArray;
  LJSONProduto: TJSONObject;
begin
  LProdutos := TJSONArray.Create;
  try
    mtProdutos.First;
    while not mtProdutos.Eof do
    begin
      LJSONProduto := TJSONObject.Create;
      LJSONProduto.AddPair(mtProdutosID.FieldName.ToLower, TJSONNumber.Create(mtProdutosID.AsInteger));
      LJSONProduto.AddPair(mtProdutosNOME.FieldName.ToLower, mtProdutosNOME.AsString);
      LJSONProduto.AddPair(mtProdutosVALOR.FieldName.ToLower, TJSONNumber.Create(mtProdutosVALOR.AsFloat));
      LProdutos.AddElement(LJSONProduto);
      mtProdutos.Next;
    end;
    memoJSON.Text := LProdutos.ToString;
  finally
    LProdutos.Free;
  end;
end;

procedure TfrmMainMenu.FormCreate(Sender: TObject);
begin
  mtProdutos.Open;
end;

end.
