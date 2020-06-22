program Samples;

uses
  Vcl.Forms,
  Views.MainMenu in 'src\views\Views.MainMenu.pas' {frmMainMenu},
  Providers.Frames.Balanco.Financeiro in 'src\providers\frames\Providers.Frames.Balanco.Financeiro.pas' {FrameBalancoFinanceiro: TFrame},
  Providers.Interfaces.Observer in 'src\providers\interfaces\Providers.Interfaces.Observer.pas',
  Provider.Models.Operacao in 'src\providers\models\Provider.Models.Operacao.pas',
  Providers.Types.TipoOperacao in 'src\providers\types\Providers.Types.TipoOperacao.pas',
  Providers.Frames.Debitos.Categoria in 'src\providers\frames\Providers.Frames.Debitos.Categoria.pas' {FrameDebitoCategoria: TFrame},
  Providers.Frames.Log in 'src\providers\frames\Providers.Frames.Log.pas' {FrameLog: TFrame},
  Providers.Frames.Operacao in 'src\providers\frames\Providers.Frames.Operacao.pas' {FrameOperacao: TFrame},
  Providers.Interfaces.Subject in 'src\providers\interfaces\Providers.Interfaces.Subject.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMainMenu, frmMainMenu);
  Application.Run;
end.
