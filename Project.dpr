program Project;

uses
  Vcl.Forms,
  UnPrincipal in 'UnPrincipal.pas' {FormViewConversor},
  UnDmConversor in 'UnDmConversor.pas' {DmConversor},
  UnConversorXml in 'UnConversorXml.pas',
  UnXMLabs in 'UnXMLabs.pas',
  UnFactoryConversion in 'UnFactoryConversion.pas',
  UnFactoryXml in 'UnFactoryXml.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormViewConversor, FormViewConversor);
  Application.Run;
  ReportMemoryLeaksOnShutdown := True;
end.
