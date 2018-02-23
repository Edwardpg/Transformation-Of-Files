unit UnConversorXML;

interface

uses
  UnDmXML;

type
  TConversorXML = class(TDmXML)
  private
    FDmXML : TDmXML;
    FTrasformRead_XML : string;
    FTrasformWrite_XML : string;
  public
    procedure SetarDataFileXML;
    procedure SetProvider_CdsXML;
    procedure GetFileXML;
    procedure SetarCpXML_TrasformRead;
    procedure SetarCpXML_TrasformWrite;
    property TrasformRead: string write SetarCpXML_TrasformRead;
  end;
  const PathFile = 'C:\Users\Edward Nascimento\Dev\mockdata\data.xml';

implementation

{ TConversorXML }

procedure TConversorXML.GetFileXML;
begin

end;

procedure TConversorXML.SetarCpXML_TrasformRead;
begin
  FDmXML.XMLTransformProvider.TransformRead := 'C:\Users\Edward Nascimento\Dev\mockdata\ToDp.xtr';
end;

procedure TConversorXML.SetarCpXML_TrasformWrite;
begin
  FDmXML.XMLTransformProvider.TransformWrite := 'C:\Users\Edward Nascimento\Dev\mockdata\ToDp.xtr';
end;

procedure TConversorXML.SetarDataFileXML;
begin
  FDmXML.XMLTransformProvider.XMLDataFile := PathFile;
end;

procedure TConversorXML.SetProvider_CdsXML;
begin
 FDmXML.CdsXML.ProviderName := XMLTransformProvider;
end;

end.
