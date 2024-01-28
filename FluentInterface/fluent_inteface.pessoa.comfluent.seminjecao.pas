unit fluent_inteface.pessoa.comfluent.seminjecao;

interface

type
  IPessoa = interface; //forward

  IDependente = interface
    ['{C32C1567-2BEE-4853-873C-C1C10BC1DAEB}']
    function Nome: String; overload;
    function Nome(const aNome: string): IDependente; overload;

    function Grau: String; overload;
    function Grau(const aGrau: string): IDependente; overload;

    function &End: IPessoa;
  end;

  IPessoa = interface
    ['{878E5E26-3841-4E28-91A8-585E09A23A01}']
    function Nome: String; overload;
    function Nome(const aNome: string): IPessoa; overload;

    function SobreNome: String; overload;
    function SobreNome(const aSobreNome: string): IPessoa; overload;

    function Idade: Integer; overload;
    function Idade(const aIdade: Integer): IPessoa; overload;

    function Dependente: IDependente;

    function Frase: String;
  end;

  TDependenteSemInjecao = class(TInterfacedObject, IDependente)
    private
      [Weak]
      FParent: IPessoa;
      FNome: String;
      FGrau: String;
    public
      constructor Create(aParent: IPessoa);
      destructor Destroy; override;
      class function New(aParent: IPessoa): IDependente;

      function Nome: String; overload;
      function Nome(const aNome: string): IDependente; overload;

      function Grau: String; overload;
      function Grau(const aGrau: string): IDependente; overload;

      function &End: IPessoa;
  end;

  TPessoaFluentSemInjecao = class(TInterfacedObject, IPessoa)
    private
      FDependente: IDependente;
      FNome: String;
      FSobreNome: String;
      FIdade: Integer;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: IPessoa;

      function Nome: String; overload;
      function Nome(const aNome: string): IPessoa; overload;

      function SobreNome: String; overload;
      function SobreNome(const aSobreNome: string): IPessoa; overload;

      function Idade: Integer; overload;
      function Idade(const aIdade: Integer): IPessoa; overload;

      function Dependente: IDependente;

      function Frase: String;
  end;

implementation

uses
  SysUtils;

{ TDependente }

constructor TDependenteSemInjecao.Create(aParent: IPessoa);
begin
  Inherited Create;
  FParent := aParent;
end;

destructor TDependenteSemInjecao.Destroy;
begin
  inherited;
end;

function TDependenteSemInjecao.&End: IPessoa;
begin
  Result := FParent;
end;

function TDependenteSemInjecao.Grau: String;
begin
  Result := FGrau;
end;

function TDependenteSemInjecao.Grau(const aGrau: string): IDependente;
begin
  Result := Self;
  FGrau := aGrau;
end;

class function TDependenteSemInjecao.New(aParent: IPessoa): IDependente;
begin
  Result := Self.Create(aParent);
end;

function TDependenteSemInjecao.Nome(const aNome: string): IDependente;
begin
  Result := Self;
  FNome := aNome;
end;

function TDependenteSemInjecao.Nome: String;
begin
  Result := FNome;
end;

{ TPessoaFluentSemInjecao }

constructor TPessoaFluentSemInjecao.Create;
begin
  FDependente := TDependenteSemInjecao.New(Self);
end;

function TPessoaFluentSemInjecao.Dependente: IDependente;
begin
  Result := FDependente;
end;

destructor TPessoaFluentSemInjecao.Destroy;
begin
  inherited;
end;

function TPessoaFluentSemInjecao.Frase: String;
begin
  Result := Format('Nome: %s - Sobrenome: %s - Idade: %d - Dependente: %s (%s)',
    [FNome, FSobreNome, FIdade, FDependente.Nome, FDependente.Grau]);
end;

function TPessoaFluentSemInjecao.Idade: Integer;
begin
  Result := FIdade;
end;

function TPessoaFluentSemInjecao.Idade(const aIdade: Integer): IPessoa;
begin
  Result := Self;
  FIdade := aIdade;
end;

class function TPessoaFluentSemInjecao.New: IPessoa;
begin
  Result := Self.Create;
end;

function TPessoaFluentSemInjecao.Nome: String;
begin
  Result := FNome;
end;

function TPessoaFluentSemInjecao.Nome(const aNome: string): IPessoa;
begin
  Result := Self;
  FNome := aNome;
end;

function TPessoaFluentSemInjecao.SobreNome: String;
begin
  Result := FSobreNome;
end;

function TPessoaFluentSemInjecao.SobreNome(const aSobreNome: string): IPessoa;
begin
  Result := Self;
  FSobreNome := aSobreNome;
end;

end.
