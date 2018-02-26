unit UnPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Data.DB, Vcl.DBGrids, UnDmXML;

type
  TFormViewConversor = class(TForm)
    DBGridConversor: TDBGrid;
    BtnCarregarXML: TBitBtn;
    BtnCarregarCSV: TBitBtn;
    BtnCarregarJson: TBitBtn;
    GroupBoxCarregarArquivos: TGroupBox;
    DsFilesXML: TDataSource;
    procedure BtnCarregarXMLClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FTDmXML : TDmXML;
  public
    procedure SetarDataSourceXML;
  end;

var
  FormViewConversor: TFormViewConversor;

implementation

{$R *.dfm}

procedure TFormViewConversor.BtnCarregarXMLClick(Sender: TObject);
begin
  SetarDataSourceXML;
end;

procedure TFormViewConversor.FormClose(Sender: TObject; var Action:
    TCloseAction);
begin
  FTDmXML.Free;
end;

procedure TFormViewConversor.FormCreate(Sender: TObject);
begin
  FTDmXML := TDmXML.Create(Self);
end;

procedure TFormViewConversor.FormShow(Sender: TObject);
begin

end;

{ TFormViewConversor }

procedure TFormViewConversor.SetarDataSourceXML;
begin
  DsFilesXML.DataSet := FTDmXML.CdsXML;
end;

end.
