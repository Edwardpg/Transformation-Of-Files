unit UnPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Data.DB, Vcl.DBGrids, UnFactoryConversion, UnDmConversor;

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
  private
      FConversorXml : TDmConversor;
      FTypeFile : TFactoryConvesion;
  public
    procedure CriarInstanciaTypeFile;
    procedure MostrarOnGrid;
    constructor Create; reintroduce;
    destructor Destroy; override;
  end;

var
  FormViewConversor: TFormViewConversor;

implementation

uses
  UnFactoryXml, UnXMLabs;

const
  BtnFileXml = 0;
  BtnFileCsv = 1;

{$R *.dfm}

procedure TFormViewConversor.BtnCarregarXMLClick(Sender: TObject);
begin

  DsFilesXML.DataSet := FConversorXml.CdsXML;
  DBGridConversor.DataSource := DsFilesXML;
end;

constructor TFormViewConversor.Create;
begin

end;

procedure TFormViewConversor.CriarInstanciaTypeFile;
begin
//  if BtnCarregarXML.OnClick then
//    BtnFileXml : FTypeFile := TFactoryXml.Create;
//  end;

end;

destructor TFormViewConversor.Destroy;
begin

  inherited;
end;

procedure TFormViewConversor.FormClose(Sender: TObject; var Action:
    TCloseAction);
begin
//  FTDmXML.Free;
end;

procedure TFormViewConversor.FormCreate(Sender: TObject);
begin
//  FTDmXML := TDmXML.Create(Self);
end;

procedure TFormViewConversor.MostrarOnGrid;
var
  carregaxml : TXmlAbs;
begin
try
  DsFilesXML.DataSet := FConversorXml.CdsXML;


finally
  carregaxml.Free;
end;

end;

end.
