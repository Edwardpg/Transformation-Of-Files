unit UnFactoryXml;

interface

uses
  System.SysUtils, UnFactoryConversion, UnXMLabs;

type
  TFactoryXml = class (TFactoryConvesion)
  public
    function GetConversionXML: TXmlAbs; override;
  end;

implementation

uses
  UnConversorXml;

{ TFactoryXml }

function TFactoryXml.GetConversionXML: TXmlAbs;
begin
  Result := TConversorXML.Create;
end;

end.
