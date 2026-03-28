program RateLimiting;

{$APPTYPE CONSOLE}

uses
  System.SysUtils,
  Dext.Web;

var
  App: IWebApplication;
begin
  App := TDextApplication.Create;

  // ✅ Configure Rate Limiting
  WriteLn('📦 Configuring Rate Limiting...');

  //Com Policy
  var Policy :=
    TRateLimitPolicy
      .FixedWindow(5, 60)
      .RejectionMessage('{"error":"Too many requests! Please slow down."}')
      .RejectionStatusCode(429);

  // Alternative examples (commented):

  // Sliding Window (more precise):
  // TApplicationBuilderRateLimitExtensions.UseRateLimiting(App,
  //   TRateLimitPolicy.SlidingWindow(50, 60)
  //     .WithPartitionByIp);

  // Token Bucket (allows bursts):
  // TApplicationBuilderRateLimitExtensions.UseRateLimiting(App,
  //   TRateLimitPolicy.TokenBucket(50, 10)  // 50 tokens, refill 10/sec
  //     .WithPartitionByHeader('X-API-Key'));

  // Concurrency Limit:
  // TApplicationBuilderRateLimitExtensions.UseRateLimiting(App,
  //   TRateLimitPolicy.Concurrency(100)
  //     .WithPartitionByRoute);

  // Custom Partition:
  // TApplicationBuilderRateLimitExtensions.UseRateLimiting(App,
  //   TRateLimitPolicy.FixedWindow(10, 60)
  //     .WithPartitionKey(function(Ctx: IHttpContext): string
  //       begin
  //         Result := Ctx.Request.RemoteIpAddress + '_' +
  //                   Ctx.Request.Headers.Values['User-Agent'];
  //       end));

  // Fluent middleware registration
  App.Builder.UseRateLimiting(Policy);

  WriteLn('   ✅ Rate limiting configured: 5 requests per minute');
  WriteLn;

  // ✅ Test Endpoint
  App.Builder.MapGet<IResult>('/api/test',
    function: IResult
    begin
      Result := Results.Ok('{"message":"Request successful!","timestamp":"' +
        DateTimeToStr(Now) + '"}');
    end);

  App.Run(8080);
end.
