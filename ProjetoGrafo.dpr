program ProjetoGrafo;

uses
  Forms,
  uGrafo in 'uGrafo.pas' {Form1},
  uConstantes in 'uConstantes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
