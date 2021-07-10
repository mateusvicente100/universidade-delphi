unit Views.MainMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Views.ArrayDML, Vcl.ExtCtrls, Vcl.CategoryButtons, Vcl.WinXCtrls,
  Vcl.Imaging.pngimage, System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList, Views.HandlingErrors, Views.Pagination;

type
  TFrmMainMenu = class(TForm)
    ActionList: TActionList;
    actArrayDML: TAction;
    actHandlingErrors: TAction;
    ImageList: TImageList;
    pnlContent: TPanel;
    pnlToolbar: TPanel;
    imgMenu: TImage;
    splitView: TSplitView;
    catMenuItems: TCategoryButtons;
    lblTitle: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    actPagination: TAction;
    procedure imgMenuClick(Sender: TObject);
    procedure actArrayDMLExecute(Sender: TObject);
    procedure actHandlingErrorsExecute(Sender: TObject);
    procedure actPaginationExecute(Sender: TObject);
  private
    FActiveForm: TForm;
    procedure ShowForm(const AFormClass: TComponentClass; var AForm);
  end;

var
  FrmMainMenu: TFrmMainMenu;

implementation

{$R *.dfm}

procedure TFrmMainMenu.actArrayDMLExecute(Sender: TObject);
var
  LForm: TFrmArrayDML;
begin
  ShowForm(TFrmArrayDML, LForm);
end;

procedure TFrmMainMenu.actHandlingErrorsExecute(Sender: TObject);
var
  LForm: TFrmHandlingErrors;
begin
  ShowForm(TFrmHandlingErrors, LForm);
end;

procedure TFrmMainMenu.actPaginationExecute(Sender: TObject);
var
  LForm: TFrmPagination;
begin
  ShowForm(TFrmPagination, LForm);
end;

procedure TFrmMainMenu.imgMenuClick(Sender: TObject);
begin
  if splitView.Opened then
  begin
    splitView.Close;
    catMenuItems.ButtonOptions := catMenuItems.ButtonOptions - [boShowCaptions];
  end
  else
  begin
    splitView.Open;
    catMenuItems.ButtonOptions := catMenuItems.ButtonOptions + [boShowCaptions];
  end;
end;

procedure TFrmMainMenu.ShowForm(const AFormClass: TComponentClass; var AForm);
begin
  if Assigned(FActiveForm) then
    FActiveForm.Close;
  Application.CreateForm(AFormClass, AForm);
  TForm(AForm).Parent := pnlContent;
  TForm(AForm).Align := TAlign.alClient;
  TForm(AForm).WindowState := TWindowState.wsMaximized;
  TForm(AForm).Show;
  TForm(AForm).Realign;
  FActiveForm := TForm(AForm);
end;

end.
