unit UnDmConversor;

interface

uses
  System.SysUtils, System.Classes, Xml.xmldom, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, Datasnap.Xmlxform;

type
  TDmConversor = class(TDataModule)
    XMLTransformProvider: TXMLTransformProvider;
    CdsXML: TClientDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmConversor: TDmConversor;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
