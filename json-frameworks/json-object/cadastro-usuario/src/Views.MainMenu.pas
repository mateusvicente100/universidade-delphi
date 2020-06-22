unit Views.MainMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.JSON;

type
  TfrmMainMenu = class(TForm)
    Label1: TLabel;
    edtCodigo: TEdit;
    edtNome: TEdit;
    Label2: TLabel;
    edtSobrenome: TEdit;
    Label3: TLabel;
    btnGerar: TButton;
    memoJSON: TMemo;
    btnAdicionar: TButton;
    btnGerarLista: TButton;
    procedure btnGerarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnGerarListaClick(Sender: TObject);
  private
    FListaUsuarios: TJSONArray;
  end;

var
  frmMainMenu: TfrmMainMenu;

implementation

{$R *.dfm}

procedure TfrmMainMenu.btnAdicionarClick(Sender: TObject);
var
  LJSONUsuario: TJSONObject;
begin
  LJSONUsuario := TJSONObject.Create;
  LJSONUsuario.AddPair('id', TJSONNumber.Create(StrToInt(edtCodigo.Text)));
  LJSONUsuario.AddPair('nome', edtNome.Text);
  LJSONUsuario.AddPair('sobrenome', edtSobrenome.Text);
  FListaUsuarios.AddElement(LJSONUsuario);
  edtCodigo.Clear;
  edtNome.Clear;
  edtSobrenome.Clear;
  edtCodigo.SetFocus;
end;

procedure TfrmMainMenu.btnGerarClick(Sender: TObject);
var
  LJSONUsuario: TJSONObject;
begin
  LJSONUsuario := TJSONObject.Create;
  try
    LJSONUsuario.AddPair('id', TJSONNumber.Create(StrToInt(edtCodigo.Text)));
    LJSONUsuario.AddPair('nome', edtNome.Text);
    LJSONUsuario.AddPair('sobrenome', edtSobrenome.Text);
    memoJSON.Text := LJSONUsuario.ToString;
  finally
    LJSONUsuario.Free;
  end;
end;

procedure TfrmMainMenu.btnGerarListaClick(Sender: TObject);
begin
  memoJSON.Text := FListaUsuarios.ToString;
end;

procedure TfrmMainMenu.FormCreate(Sender: TObject);
begin
  FListaUsuarios := TJSONArray.Create;
end;

procedure TfrmMainMenu.FormDestroy(Sender: TObject);
begin
  FListaUsuarios.Free;
end;

end.
