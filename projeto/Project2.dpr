program Project2;

uses
  Vcl.Forms,
  ProjetoFilmes in 'ProjetoFilmes.pas' {Form3},
  FormDiretores in 'FormDiretores.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
