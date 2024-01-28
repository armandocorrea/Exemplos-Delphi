unit fluent_inteface.pessoa.comfluent;

interface

type
  IPessoa = interface
    ['{26881939-5908-4C6C-BF11-100C42922E68}']
    function Nome: String; overload;
    function Nome(const aNome: string): IPessoa; overload;

    function SobreNome: String; overload;
    function SobreNome(const aSobreNome: string): IPessoa; overload;

    function Idade: Integer; overload;
    function Idade(const aIdade: Integer): IPessoa; overload;

    function Frase: String;
  end;

  TPessoaFluent = class(TInterfacedObject, IPessoa)
    private
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

      function Frase: String;
  end;

implementation

uses
  SysUtils;

{ TPessoaFluent }

constructor TPessoaFluent.Create;
begin
end;

destructor TPessoaFluent.Destroy;
begin
  inherited;
end;

function TPessoaFluent.Frase: String;
begin
  Result := Format('Nome: %s - Sobrenome: %s - Idade: %d', [FNome, FSobreNome, FIdade]);
end;

function TPessoaFluent.Idade: Integer;
begin
  Result := FIdade;
end;

function TPessoaFluent.Idade(const aIdade: Integer): IPessoa;
begin
  Result := Self;
  FIdade := aIdade;
end;

class function TPessoaFluent.New: IPessoa;
begin
  Result := Self.Create;
end;

function TPessoaFluent.Nome(const aNome: string): IPessoa;
begin
  Result := Self;
  FNome := aNome;
end;

function TPessoaFluent.Nome: String;
begin
  Result := FNome;
end;

function TPessoaFluent.SobreNome(const aSobreNome: string): IPessoa;
begin
  Result := Self;
  FSobreNome := aSobreNome;
end;

function TPessoaFluent.SobreNome: String;
begin
  Result := FSobreNome;
end;

end.
