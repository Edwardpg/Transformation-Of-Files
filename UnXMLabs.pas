unit UnXMLabs;

interface

type
  TXmlAbs = class
    procedure SetarDataFileXML; virtual; abstract;
    procedure SetProvider_CdsXML; virtual; abstract;
//    procedure GetFileXML; virtual; abstract;
    procedure SetarCpXML_TrasformRead;  virtual; abstract;
    procedure SetarCpXML_TrasformWrite; virtual; abstract;
  end;


implementation

end.
