program Samples;

uses
  Vcl.Forms,
  Views.MainMenu in 'src\Views.MainMenu.pas' {frmMainMenu};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMainMenu, frmMainMenu);
  Application.Run;
end.
