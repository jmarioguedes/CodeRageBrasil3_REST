program cr3GoogleTranslate;

uses
  Vcl.Forms,
  Unt_Principal in 'Unt_Principal.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
