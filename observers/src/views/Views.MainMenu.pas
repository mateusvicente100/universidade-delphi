unit Views.MainMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Providers.Frames.Operacao, Vcl.ExtCtrls, Providers.Frames.Balanco.Financeiro,
  Providers.Frames.Debitos.Categoria, Providers.Frames.Log;

type
  TfrmMainMenu = class(TForm)
    FrameOperacao: TFrameOperacao;
    Panel1: TPanel;
    FrameBalancoFinanceiro: TFrameBalancoFinanceiro;
    FrameDebitoCategoria: TFrameDebitoCategoria;
    FrameLog: TFrameLog;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMainMenu: TfrmMainMenu;

implementation

{$R *.dfm}

procedure TfrmMainMenu.FormCreate(Sender: TObject);
begin
  FrameOperacao.AdicionarObserver(FrameBalancoFinanceiro);
  FrameOperacao.AdicionarObserver(FrameDebitoCategoria);
  FrameOperacao.AdicionarObserver(FrameLog);
end;

end.
