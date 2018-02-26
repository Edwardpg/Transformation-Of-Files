unit UnFactoryConversion;

interface

uses
  UnXmlAbs;

type
  TFactoryConvesion = class
    function GetConversionXML: TXmlAbs; virtual; abstract;

  end;

implementation

{ TFactoryConvesion }

end.
