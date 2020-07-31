unit Views.HandlingErrors;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Services.HandlingErrors;

type
  TFrmHandlingErrors = class(TForm)
    pnlToolbar: TPanel;
    Label2: TLabel;
    btnGerarListaTemporaria: TButton;
    Label4: TLabel;
    memLog: TMemo;
    btnFieldRequired: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnGerarListaTemporariaClick(Sender: TObject);
    procedure btnFieldRequiredClick(Sender: TObject);
  private
    FService: TServiceHandlingErrors;
  end;

implementation

{$R *.dfm}

procedure TFrmHandlingErrors.btnFieldRequiredClick(Sender: TObject);
begin
  try
    FService.FieldRequiredError;
  except
    on E:Exception do
      memLog.Lines.Add(E.Message);
  end;
end;

procedure TFrmHandlingErrors.btnGerarListaTemporariaClick(Sender: TObject);
begin
  try
    FService.PrimaryKeyError;
  except
    on E:Exception do
      memLog.Lines.Add(E.Message);
  end;
end;

procedure TFrmHandlingErrors.FormCreate(Sender: TObject);
begin
  FService := TServiceHandlingErrors.Create(Self);
end;

procedure TFrmHandlingErrors.FormDestroy(Sender: TObject);
begin
  FService.Free;
end;

end.
