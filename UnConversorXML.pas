unit UnConversorXml;

interface

uses
  UnXMLabs, UnDmConversor;

type
  TConversorXML = class(TXmlAbs)
  private
    FDmConversor : TDmConversor;
  public
    procedure SetarDataFileXML; override;
    procedure SetProvider_CdsXML; override;
    procedure SetarCpXML_TrasformRead; override;
    procedure SetarCpXML_TrasformWrite; override;
//    destructor Destroy; override;
//    constructor Create; reintroduce;
    end;

  const PathFileXml = 'C:\Users\Edward Nascimento\Dev\mockdata\data.xml';
        PathFileXtr = 'C:\Users\Edward Nascimento\Dev\mockdata\ToDp.xtr';

implementation

//constructor TConversorXML.Create;
//begin
//  FDmConversor := TDmConversor.Create(t);
//end;

//destructor TConversorXML.Destroy;
//begin
//  FDmConversor.Free;
//  inherited;
//end;

procedure TConversorXML.SetarCpXML_TrasformRead;
begin
  inherited;
  FDmConversor.XMLTransformProvider.TransformRead.TransformationFile := PathFileXtr;
end;

procedure TConversorXML.SetarCpXML_TrasformWrite;
begin
  inherited;
  FDmConversor.XMLTransformProvider.TransformWrite.TransformationFile := PathFileXtr;
end;

procedure TConversorXML.SetarDataFileXML;
begin
  inherited;
  FDmConversor.XMLTransformProvider.XMLDataFile := PathFileXml;
end;

procedure TConversorXML.SetProvider_CdsXML;
begin
  inherited;
  FDmConversor.CdsXML.ProviderName := 'XMLTransformProvider';
end;

end.
