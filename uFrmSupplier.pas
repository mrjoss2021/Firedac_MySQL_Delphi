unit uFrmSupplier;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls;

type
  TFrmSupplier = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    DataSource1: TDataSource;
    FDQuery1: TFDQuery;
    Qproses: TFDQuery;
    Button3: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ekodesup: TEdit;
    enama: TEdit;
    ealamat: TEdit;
    etelepon: TEdit;
    eprusahaan: TEdit;
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSupplier: TFrmSupplier;

implementation

{$R *.dfm}

uses uDm;

procedure TFrmSupplier.Button2Click(Sender: TObject);
var
sql:string;
begin
sql:='insert into tsupplier(kodesup,nama,alamat,telepon,perusahaan)'+
   ' values(:kodesup,:nama,:alamat,:telepon,:perusahaan);';
   Qproses.Close;
   Qproses.Connection:=dm.FDConnection1;
  Qproses.SQL.Text:=sql;
  Qproses.ParamByName('kodesup').AsString:=ekodesup.Text;
  Qproses.ParamByName('nama').AsString:=enama.Text;
  Qproses.ParamByName('alamat').AsString:=ealamat.Text;
  Qproses.ParamByName('telepon').AsString:=etelepon.Text;
  Qproses.ParamByName('perusahaan').AsString:=eprusahaan.text;
   Qproses.ExecSQL;
   FDQuery1.Refresh
end;

procedure TFrmSupplier.Button3Click(Sender: TObject);
begin
  if not FDQuery1.IsEmpty then FDQuery1.Delete;

end;

procedure TFrmSupplier.FormShow(Sender: TObject);
begin
  FDQuery1.Connection:=dm.FDConnection1;
  FDQuery1.Open('select * from tsupplier');
  datasource1.DataSet:=FDQuery1;
  dbgrid1.DataSource:=datasource1;
end;

end.
