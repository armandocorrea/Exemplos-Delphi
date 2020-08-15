unit UFuncoesExtras;

interface

Type
  TParametros = record
    Server          : String;
    Database        : String;
    User            : String;
    Pass            : String;
    PastaLog        : String;
    IndLogDetalhado : String;
    TempoTimer      : String;
  end;

  TFuncoesExtras = class
    class procedure Grava_Log(Texto : string);
    class function Processa_Ini : string;
  end;

var
  Parametros : TParametros;

implementation

uses
  System.SysUtils;

{ TFuncoesExtras }

class procedure TFuncoesExtras.Grava_Log(Texto : string);
var
  F      : TextFile;
  ArqLog : string;
begin
  Texto := FormatDateTime('dd/mm/yyyy hh:nn:ss', now) + ' - ' + Texto;

  ArqLog := Parametros.PastaLog + 'log-sms-' + FormatDateTime('yyyyMMdd', now) + '.txt';

  try
    ForceDirectories(ExtractFilePath(ArqLog));
    AssignFile(F, ArqLog);

    if FileExists(ArqLog) then
      Append(F)
    else
      Rewrite(F);

    WriteLn(F, Texto);
  finally
    try
      CloseFile(F);
    except
    end;
  end;
end;

class function TFuncoesExtras.Processa_Ini : string;
var
  F : TextFile;
  s, sPath, sresult : string;
  i : integer;
begin
  sResult := '';

  Parametros.Server          := '';
  Parametros.Database        := '';
  Parametros.User            := '';
  Parametros.Pass            := '';
  Parametros.PastaLog        := '';
  Parametros.IndLogDetalhado := '';
  Parametros.TempoTimer      := '';

  try
    sPath := ExtractFilePath(ParamStr(0)) + 'agent.ini';
    if not FileExists(sPath) then
      FileCreate(sPath);

    AssignFile(F, sPath);
    Reset(F);

    // Servidor...
    Readln(F, S);
    i := Pos('=', S) + 1;
    while i <= length(trimright(S)) do
    begin
      Parametros.Server := Parametros.server + copy(S, i, 1);
      i := i + 1;
    end;

    // Database...
    Readln(F, S);
    i := Pos('=', S) + 1;
    while i <= length(trimright(S)) do
    begin
      Parametros.Database := Parametros.Database + copy(S,i,1);
      i := i + 1;
    end;

    // Usuario...
    Readln(F, S);
    i := Pos('=', S) + 1;
    while i <= length(trimright(S)) do
    begin
      Parametros.User := Parametros.User + copy(S,i,1);
      i := i + 1;
    end;

    // Senha...
    Readln(F, S);
    i := Pos('=', S) + 1;
    while i <= length(trimright(S)) do
    begin
      Parametros.Pass := Parametros.Pass + copy(S,i,1);
      i := i + 1;
    end;

    // Diretorio do arquivo de log...
    Readln(F, S);
    i := Pos('=', S) + 1;
    while i <= length(trimright(S)) do
    begin
      Parametros.PastaLog := Parametros.PastaLog + copy(S,i,1);
      i := i + 1;
    end;

    // Gravar log detalhado...
    Readln(F, S);
    i := Pos('=', S) + 1;
    while i <= length(trimright(S)) do
    begin
      Parametros.IndLogDetalhado := Parametros.IndLogDetalhado + copy(S,i,1);
      i := i + 1;
    end;

    // Tempo do timer...
    Readln(F, S);
    i := Pos('=', S) + 1;
    while i <= length(trimright(S)) do
    begin
      Parametros.TempoTimer := Parametros.TempoTimer + copy(S,i,1);
      i := i + 1;
    end;

    Close(F);
    except on e:exception do
    begin
      Grava_Log('Erro:' + e.Message);
    end;
  end;

  Result := sresult;
end;

end.
