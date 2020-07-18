program Servidor;

uses
  Vcl.Forms,
  UFrmPrincipal in 'UFrmPrincipal.pas' {Form1},
  UdtmDados in 'UdtmDados.pas' {DataModule2: TDataModule},
  DataSetConverter4D.Helper in '..\Utilitarios\DataSetConverter4D.Helper.pas',
  DataSetConverter4D.Impl in '..\Utilitarios\DataSetConverter4D.Impl.pas',
  DataSetConverter4D in '..\Utilitarios\DataSetConverter4D.pas',
  DataSetConverter4D.Util in '..\Utilitarios\DataSetConverter4D.Util.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.Run;
end.
