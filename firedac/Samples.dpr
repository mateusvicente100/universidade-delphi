program Samples;

uses
  Vcl.Forms,
  Views.MainMenu in 'src\views\Views.MainMenu.pas' {FrmMainMenu},
  Views.ArrayDML in 'src\views\Views.ArrayDML.pas' {FrmArrayDML},
  Services.ArrayDML in 'src\service\Services.ArrayDML.pas' {ServiceArrayDML: TDataModule},
  Services.HandlingErrors in 'src\service\Services.HandlingErrors.pas' {ServiceHandlingErrors: TDataModule},
  Views.HandlingErrors in 'src\views\Views.HandlingErrors.pas' {FrmHandlingErrors};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMainMenu, FrmMainMenu);
  Application.Run;
end.
