program Project;

uses
  Vcl.Forms,
  UnPrincipal in 'UnPrincipal.pas' {FormViewConversor},
  UnDmXML in 'UnDmXML.pas' {DmXML},
  UnConversorXML in 'UnConversorXML.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormViewConversor, FormViewConversor);
  Application.Run;
  ReportMemoryLeaksOnShutdown := True;
end.
