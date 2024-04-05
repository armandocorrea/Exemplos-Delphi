unit orm.model.entity.usuario.simpleorm;

interface

uses
  SimpleAttributes;

type
  [Tabela('usuario')]
  TUsuario = class
  private
    FID: Integer;
    FName: string;
  public
    constructor Create;
    destructor Destroy; override;

    [Campo('Id'), PK]
    property Id: Integer read FId write FId;
    [Campo('Name')]
    property Name: string read FName write FName;
  end;

implementation

{ TUsuario }

constructor TUsuario.Create;
begin
end;

destructor TUsuario.Destroy;
begin
  inherited;
end;

end.
