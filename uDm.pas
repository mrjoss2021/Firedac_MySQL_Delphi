unit uDm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, uFrmMain, FireDAC.Phys.MySQL, Vcl.Forms,
  FireDAC.Phys.MySQLDef;

type
  TDm = class(TDataModule)
    FDConnection1: TFDConnection;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    procedure FDConnection1AfterConnect(Sender: TObject);
    procedure FDConnection1BeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dm: TDm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDm.FDConnection1AfterConnect(Sender: TObject);
begin
  FrmMain.StatusBar1.Panels[1].Text:='mySQl Connected  ';
end;

procedure TDm.FDConnection1BeforeConnect(Sender: TObject);
var
sfile:string;
begin
sfile:=extractfilepath(application.ExeName)+'libmysql.dll';

 //FDPhysMySQLDriverLink1.BaseDriverID:='MySQL';
 FDPhysMySQLDriverLink1.DriverID:='Connector';
 FDPhysMySQLDriverLink1.VendorLib:=sfile;

 {with dm.FDConnection1 do
   begin
   Connected:=false;
    DriverName:='Connector';

    with Params do
    begin

        Clear;
        Add('DriverID=MySQL');
        Add('UserName=root');
     //   Add('password=""');
        Add('Server=localhost');
        Add('Port=3306');
        Add('Database=webservice');
      end;
end;
 }
end;

end.
