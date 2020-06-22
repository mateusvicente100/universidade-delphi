unit Views.MainMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DataSet.Serialize, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.JSON;

type
  TfrmMainMenu = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    memoJSON: TMemo;
    DBGridUsuarios: TDBGrid;
    btnExportar: TButton;
    btnImportar: TButton;
    mtUsuarios: TFDMemTable;
    dsUsuarios: TDataSource;
    mtUsuariosID: TIntegerField;
    mtUsuariosNOME: TStringField;
    mtUsuariosSOBRENOME: TStringField;
    mtUsuariosIDADE: TIntegerField;
    Panel5: TPanel;
    DBGridContatos: TDBGrid;
    mtContatos: TFDMemTable;
    dsContatos: TDataSource;
    mtContatosID: TIntegerField;
    mtContatosTIPO: TStringField;
    mtContatosVALOR: TStringField;
    mtContatosID_USUARIO: TIntegerField;
    Panel6: TPanel;
    DBGrid1: TDBGrid;
    mtEnderecos: TFDMemTable;
    dsEnderecos: TDataSource;
    mtEnderecosID: TIntegerField;
    mtEnderecosLOGRADOURO: TStringField;
    mtEnderecosNUMERO: TStringField;
    mtEnderecosCIDADE: TStringField;
    mtEnderecosUF: TStringField;
    mtEnderecosCEP: TStringField;
    mtEnderecosBAIRRO: TStringField;
    mtEnderecosID_USUARIO: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMainMenu: TfrmMainMenu;

implementation

{$R *.dfm}

procedure TfrmMainMenu.btnExportarClick(Sender: TObject);
var
  LJSONUsuario: TJSONObject;
begin
  LJSONUsuario := mtUsuarios.ToJSONObject();
  try
   memoJSON.Text := LJSONUsuario.Format();
  finally
    LJSONUsuario.Free;
  end;
end;

procedure TfrmMainMenu.btnImportarClick(Sender: TObject);
begin
  mtUsuarios.LoadFromJSON(memoJSON.Text);
end;

procedure TfrmMainMenu.FormCreate(Sender: TObject);
begin
  mtUsuarios.Open;
  mtContatos.Open;
  mtEnderecos.Open;
end;

end.
