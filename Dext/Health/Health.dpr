program Health;

{$APPTYPE CONSOLE}

uses
  System.SysUtils,
  FireDAC.Comp.Client,
  Db,
  Dext.Web,
  Dext.Entity.Drivers.FireDAC,
  Dext.Entity;

begin
  var App: IWebApplication := TDextApplication.Create;
  var Builder := App.Builder;

  //Health Check Básico
  Builder.MapGet('/health', procedure(Ctx: IHttpContext)
  begin
    Ctx.Response.StatusCode := 200;
    Ctx.Response.Json('{"status": "saudável"}');
  end);

  //Health Check Detalhado
  Builder.MapGet('/health2', procedure(Ctx: IHttpContext)
  var
    LStatus: string;
    LDbOk: Boolean;
    LDbConn: IDbConnection;
    LConn: TFDConnection;
    LDataSet: TDataSet;
    LDbContext: TDbContext;
  begin
    LConn := TFDConnection.Create(nil);
    LDataSet := TDataSet.Create(nil);

    try
      LConn.DriverName := 'SQLite';
      LConn.Params.Values['Database'] := ':memory:';

      LDbConn := TFireDACConnection.Create(LConn);
      LDbContext := TDbContext.Create(LDbConn, TSQLiteDialect.Create);

      // Verificar banco de dados
      try
        try
          LConn.Open;
          LConn.ExecSQL('SELECT 1', LDataset);
          LDbOk := True;
        except
          LDbOk := False;
        end;
      finally
        LConn.Close;
      end;

      // Verificar cache
      {try
        CacheService.Ping;
        CacheOk := True;
      except
        CacheOk := False;
      end;}

      // Determinar status geral
      if LDbOk then
      begin
        Ctx.Response.StatusCode := 200;
        LStatus := 'saudável';
      end
      else
      begin
        Ctx.Response.StatusCode := 503;
        LStatus := 'não saudável';
      end;

      Ctx.Response.Json(Format(
        '{"status": "%s", "verificacoes": {"database": %s}}',
        [LStatus, BoolToStr(LDbOk)]
      ));
    finally
      LDataSet.Free;
      LConn.Free;
    end;
  end);

  App.Run(8080);
end.
