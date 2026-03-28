unit Products;

interface

uses
  System.SysUtils,
  Dext.Web;

type
  [ApiController('/api/products')]
  TProductsController = class
  public
    [HttpGet('withCache')]
    [ResponseCache(30)]
    function GetWithCache: IResult;

    [HttpGet('withoutCache')]
    function GetWithoutCache: IResult;
  end;

implementation

{ TProductsController }

function TProductsController.GetWithCache: IResult;
begin
  Result := Results.Ok(Format('{"time":"%s","message":"This response is cached for 30s"}',
              [DateTimeToStr(Now)]));
end;

function TProductsController.GetWithoutCache: IResult;
begin
  Result := Results.Ok(Format('{"time":"%s","message":"This response is cached for 30s"}',
              [DateTimeToStr(Now)]));
end;

initialization
  TProductsController.ClassName;

end.
