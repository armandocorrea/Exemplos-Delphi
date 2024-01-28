unit fluent_inteface.pessoa.comfluent.injecao;

interface

type
  IDependente = interface
    ['{E5452B95-E9E9-41FE-986B-C7177C60DEE0}']
    function Nome: String; overload;
    function Nome(const aNome: string): IDependente; overload;

    function Grau: String; overload;
    function Grau(const aGrau: string): IDependente; overload;
  end;

  IPessoa = interface
    ['{878E5E26-3841-4E28-91A8-585E09A23A01}']
    function Nome: String; overload;
    function Nome(const aNome: string): IPessoa; overload;

    function SobreNome: String; overload;
    function SobreNome(const aSobreNome: string): IPessoa; overload;

    function Idade: Integer; overload;
    function Idade(const aIdade: Integer): IPessoa; overload;

    function Frase: String;
  end;

  TDependente = class(TInterfacedObject, IDependente)
    private
      FNome: String;
      FGrau: String;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: IDependente;

      function Nome: String; overload;
      function Nome(const aNome: string): IDependente; overload;

      function Grau: String; overload;
      function Grau(const aGrau: string): IDependente; overload;
  end;

  TPessoaFluentInjecao = class(TInterfacedObject, IPessoa)
    private
      FDependente: IDependente;
      FNome: String;
      FSobreNome: String;
      FIdade: Integer;
    public
      constructor Create(aDependente: IDependente);
      destructor Destroy; override;
      class function New(aDependente: IDependente): IPessoa;

      function Nome: String; overload;
      function Nome(const aNome: string): IPessoa; overload;

      function SobreNome: String; overload;
      function SobreNome(const aSobreNome: string): IPessoa; overload;

      function Idade: Integer; overload;
      function Idade(const aIdade: Integer): IPessoa; overload;

      function Frase: String;
  end;

implementation

uses
  SysUtils;

{ TDependente }

constructor TDependente.Create;
begin
end;

destructor TDependente.Destroy;
begin
  inherited;
end;

function TDependente.Grau: String;
begin
  Result := FGrau;
end;

function TDependente.Grau(const aGrau: string): IDependente;
begin
  Result := Self;
  FGrau := aGrau;
end;

class function TDependente.New: IDependente;
begin
  Result := Self.Create;
end;

function TDependente.Nome: String;
begin
  Result := FNome;
end;

function TDependente.Nome(const aNome: string): IDependente;
begin
  Result := Self;
  FNome := aNome;
end;

{ TPessoaFluentAvancado }

constructor TPessoaFluentInjecao.Create(aDependente: IDependente);
begin
  FDependente := aDependente;
end;

destructor TPessoaFluentInjecao.Destroy;
begin
  inherited;
end;

function TPessoaFluentInjecao.Frase: String;
begin
  Result := Format('Nome: %s - Sobrenome: %s - Idade: %d - Dependente: %s (%s)',
    [FNome, FSobreNome, FIdade, FDependente.Nome, FDependente.Grau]);
end;

function TPessoaFluentInjecao.Idade: Integer;
begin
  Result := FIdade;
end;

function TPessoaFluentInjecao.Idade(const aIdade: Integer): IPessoa;
begin
  Result := Self;
  FIdade := aIdade;
end;

class function TPessoaFluentInjecao.New(aDependente: IDependente): IPessoa;
begin
  Result := Self.Create(aDependente);
end;

function TPessoaFluentInjecao.Nome: String;
begin
  Result := FNome;
end;

function TPessoaFluentInjecao.Nome(const aNome: string): IPessoa;
begin
  Result := Self;
  FNome := aNome;
end;

function TPessoaFluentInjecao.SobreNome: String;
begin
  Result := FSobreNome;
end;

function TPessoaFluentInjecao.SobreNome(const aSobreNome: string): IPessoa;
begin
  Result := Self;
  FSobreNome := aSobreNome;
end;

end.
