unit uFrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls;

type
  TFrmMain = class(TForm)
    MainMenu1: TMainMenu;
    System1: TMenuItem;
    Master1: TMenuItem;
    DataSupplier1: TMenuItem;
    StatusBar1: TStatusBar;
    procedure FormShow(Sender: TObject);
    procedure DataSupplier1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

uses uDm, uFrmSupplier;

procedure TFrmMain.DataSupplier1Click(Sender: TObject);
begin
   frmsupplier.Show;
end;

procedure TFrmMain.FormShow(Sender: TObject);
begin
try
//dm.FDConnection1.Connected:=true;
FrmMain.StatusBar1.Panels[1].Text:='MySQL Connected  ';
except
showmessage('Can not connect to database..!');

end;
end;
end.
