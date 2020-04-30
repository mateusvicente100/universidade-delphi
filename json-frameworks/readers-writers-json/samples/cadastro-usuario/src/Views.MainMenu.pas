unit Views.MainMenu;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, System.JSON.Builders, System.JSON.Writers, System.JSON.Types, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, System.JSON.Readers;

type
  TfrmMainMenu = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtCodigo: TEdit;
    edtNome: TEdit;
    edtSobrenome: TEdit;
    btnGerar: TButton;
    memoJSON: TMemo;
    btnAdicionar: TButton;
    btnGerarLista: TButton;
    mtUsuarios: TFDMemTable;
    mtUsuariosID: TIntegerField;
    mtUsuariosNOME: TStringField;
    mtUsuariosSOBRENOME: TStringField;
    DBGrid1: TDBGrid;
    dsUsuarios: TDataSource;
    btnImportar: TButton;
    procedure btnGerarClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnGerarListaClick(Sender: TObject);
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

procedure TfrmMainMenu.btnAdicionarClick(Sender: TObject);
begin
  if not(mtUsuarios.Active) then
    mtUsuarios.Open;
  mtUsuarios.Append;
  mtUsuariosID.AsString := edtCodigo.Text;
  mtUsuariosNOME.AsString := edtNome.Text;
  mtUsuariosSOBRENOME.AsString := edtSobrenome.Text;
  mtUsuarios.Post;
  edtCodigo.Clear;
  edtNome.Clear;
  edtSobrenome.Clear;
  edtCodigo.SetFocus;
end;

procedure TfrmMainMenu.btnGerarClick(Sender: TObject);
var
  LStringWritter: TStringWriter;
  LJSONWritter: TJsonTextWriter;
  LJSONUsuario: TJSONObjectBuilder;
begin
  LStringWritter := TStringWriter.Create;
  LJSONWritter := TJsonTextWriter.Create(LStringWritter);
  LJSONUsuario := TJSONObjectBuilder.Create(LJSONWritter);
  try
    LJSONWritter.Formatting := TJsonFormatting.Indented;
    LJSONUsuario
      .BeginObject
        .Add('id', StrToInt(edtCodigo.Text))
        .Add('nome', edtNome.Text)
        .Add('sobrenome', edtSobrenome.Text)
      .EndObject;
    memoJSON.Text := LStringWritter.ToString;
  finally
    LJSONUsuario.Free;
    LJSONWritter.Free;
    LStringWritter.Free;
  end;
end;

procedure TfrmMainMenu.btnGerarListaClick(Sender: TObject);
var
  LJSONWritter: TJsonTextWriter;
begin
  LJSONWritter := TJsonTextWriter.Create(TStringWriter.Create, True);
  try
    LJSONWritter.Formatting := TJsonFormatting.Indented;
    mtUsuarios.First;
    LJSONWritter.WriteStartObject;
    LJSONWritter.WritePropertyName('usuarios');
    LJSONWritter.WriteStartArray;
    while not mtUsuarios.Eof do
    begin
      LJSONWritter.WriteStartObject;
      LJSONWritter.WritePropertyName('id');
      LJSONWritter.WriteValue(mtUsuariosID.AsInteger);
      LJSONWritter.WritePropertyName('nome');
      LJSONWritter.WriteValue(mtUsuariosNOME.AsString);
      LJSONWritter.WritePropertyName('sobrenome');
      LJSONWritter.WriteValue(mtUsuariosSOBRENOME.AsString);
      LJSONWritter.WriteEndObject;
      mtUsuarios.Next;
    end;
    LJSONWritter.WriteEndArray;
    LJSONWritter.WriteEndObject;
    memoJSON.Text := LJSONWritter.Writer.ToString;
  finally
    LJSONWritter.Free
  end;
end;

procedure TfrmMainMenu.btnImportarClick(Sender: TObject);
var
  LJSONTextReader: TJsonTextReader;
  LStringReader: TStringReader;
  LField: TField;
begin
  LStringReader := TStringReader.Create(memoJSON.Text);
  LJSONTextReader := TJsonTextReader.Create(LStringReader);
  try
    mtUsuarios.Close;
    mtUsuarios.Open;
    while LJSONTextReader.TokenType <> TJsonToken.StartArray do
      LJSONTextReader.Read;
    while LJSONTextReader.Read do
    begin
      case LJSONTextReader.TokenType of
        TJsonToken.StartObject:
          mtUsuarios.Append;
        TJsonToken.PropertyName:
          begin
            for LField in mtUsuarios.Fields do
            begin
              if LJSONTextReader.Value.AsString.Equals(LField.FieldName.ToLower) then
              begin
                LJSONTextReader.Read;
                case LField.DataType of
                  ftString:
                    LField.AsString := LJSONTextReader.Value.AsString;
                  ftInteger:
                    LField.AsInteger := LJSONTextReader.Value.AsInteger;
                end;
                Break;
              end;
            end;
          end;
        TJsonToken.EndObject:
          mtUsuarios.Post;
        TJsonToken.EndArray:
          Break;
      end;
    end;
  finally
    LJSONTextReader.Free;
    LStringReader.Free;
  end;
end;

end.
