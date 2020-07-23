unit Views.MainMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Views.ArrayDML, Vcl.ExtCtrls;

type
  TFrmMainMenu = class(TForm)
    MainMenu: TMainMenu;
    memArrayDML: TMenuItem;
    procedure memArrayDMLClick(Sender: TObject);
  private
    procedure ShowModalForm(var AForm; const AComponentClass: TComponentClass);
  end;

var
  FrmMainMenu: TFrmMainMenu;

implementation

{$R *.dfm}

procedure TFrmMainMenu.memArrayDMLClick(Sender: TObject);
var
  LForm: TFrmArrayDML;
begin
  ShowModalForm(LForm, TFrmArrayDML);
end;

procedure TFrmMainMenu.ShowModalForm(var AForm; const AComponentClass: TComponentClass);
begin
  TForm(AForm) := TFrmArrayDML.Create(Self);
  try
    TForm(AForm).ShowModal;
  finally
    TForm(AForm).Free;
  end;
end;

end.
