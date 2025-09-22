program ECSDelphi;

{$APPTYPE CONSOLE}

uses
  Horse,
  System.SysUtils;

begin

  THorse.Get('/ping',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    begin
      Res.Send('pong');
    end);

  THorse.Listen(9010,
    procedure
    begin
      Writeln('Server is runing on port ' + IntToStr(THorse.Port));
      Readln;
    end);
end.