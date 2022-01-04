program hospitalReg;

uses
  Vcl.Forms,
  main in 'main.pas' {fmMain},
  population in 'population.pas' {fmPopGen};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmMain, fmMain);
  Application.CreateForm(TfmPopGen, fmPopGen);
  Application.Run;
end.
