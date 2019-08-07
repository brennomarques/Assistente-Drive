program Assistente;



uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {FormPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Assistente para instalação de drive';
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;

end.
