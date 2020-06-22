unit Providers.Frames.Log;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Providers.Interfaces.Observer,
  Provider.Models.Operacao, Providers.Types.TipoOperacao;

type
  TFrameLog = class(TFrame, IObserver)
    pnlHeader: TPanel;
    ListBoxLog: TListBox;
  public
    procedure OnNewOperation(const AOperacao: TOperacao);
  end;

implementation

{$R *.dfm}

procedure TFrameLog.OnNewOperation(const AOperacao: TOperacao);
begin
  ListBoxLog.Items.Add(Format('Uma operação de %s de %.2f foi adicionada.', [AOperacao.Tipo.ToString.ToLower, AOperacao.Valor]));
end;

end.
