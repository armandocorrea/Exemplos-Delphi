unit orm.model.entity.usuario.ormbr;

interface

uses
  Data.DB,

  dbcbr.mapping.attributes,
  dbcbr.types.mapping,
  dbcbr.mapping.register;

type
  [Entity]
  [Table('usuario')]
  [PrimaryKey('id', 'Chave Primária')]
  TUsuario = class
  private
    FID: Integer;
    FName: string;
  public
    constructor Create;
    destructor Destroy; override;

    [Restrictions([TRestriction.NoUpdate, TRestriction.NotNull])]
    [Column('id', ftInteger)]
    property Id: Integer read FId write FId;
    [Column('name', ftString)]
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
