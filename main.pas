unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, System.Actions, Vcl.ActnList,
  Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfmMain = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    MainMenu1: TMainMenu;
    PopupMenu1: TPopupMenu;
    ActionList1: TActionList;
    acExit: TAction;
    mnFile: TMenuItem;
    Exit1: TMenuItem;
    mnService: TMenuItem;
    acPopGen: TAction;
    PopulationGen1: TMenuItem;
    procedure acExitExecute(Sender: TObject);
    procedure acPopGenExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMain: TfmMain;
  personList : TList;
implementation

{$R *.dfm}

uses population;

procedure TfmMain.acExitExecute(Sender: TObject);
begin
Close;
end;

procedure TfmMain.acPopGenExecute(Sender: TObject);
begin
  fmPopGen.ShowModal;
end;

procedure TfmMain.FormCreate(Sender: TObject);
begin
personList := TList.Create;
end;

end.
