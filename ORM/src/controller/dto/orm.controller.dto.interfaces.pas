unit orm.controller.dto.interfaces;

interface

uses
  orm.model.entity.usuario.ormbr,
  orm.model.entity.usuario.simpleorm,
  orm.model.service.interfaces;

type
  //SimpleORM
  IUsuarioSimpleORM = interface
    ['{2DCAB47C-6D9A-43C4-A448-999731018F2F}']
    function Id(const AID: Integer): IUsuarioSimpleORM; overload;
    function Id: Integer; overload;

    function Name(const AID: string): IUsuarioSimpleORM; overload;
    function Name: string; overload;

    function Build: IService<orm.model.entity.usuario.simpleorm.TUsuario>;
  end;

  //ORMBr
  IUsuarioORMBr = interface
    ['{2DCAB47C-6D9A-43C4-A448-999731018F2F}']
    function Id(const AID: Integer): IUsuarioORMBr; overload;
    function Id: Integer; overload;

    function Name(const AID: string): IUsuarioORMBr; overload;
    function Name: string; overload;

    function Build: IService<orm.model.entity.usuario.ormbr.TUsuario>;
  end;

implementation

end.
