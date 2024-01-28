unit fluent_inteface.pessoa.semfluent;

interface

type
  TPessoa = class
    private
      FNome: String;
      FSobreNome: String;
      FIdade: Integer;

      function GetIdade: Integer;
      function GetNome: String;
      function GetSobreNome: String;
      function GetFrase: String;

      procedure SetIdade(const aValue: Integer);
      procedure SetNome(const aValue: String);
      procedure SetSobreNome(const aValue: String);
    public
      constructor Create;
      destructor Destroy; override;

      property Nome: String      read GetNome      write SetNome;
      property SobreNome: String read GetSobreNome write SetSobreNome;
      property Idade: Integer    read GetIdade     write SetIdade;
      property Frase: String     read GetFrase;
  end;

implementation

uses
  SysUtils;

{ TPessoa }

constructor TPessoa.Create;
begin
  Inherited Create;
end;

destructor TPessoa.Destroy;
begin
  inherited;
end;

function TPessoa.GetFrase: String;
begin
  Result := Format('Nome: %s - Sobrenome: %s - Idade: %d', [FNome, FSobreNome, FIdade]);
end;

function TPessoa.GetIdade: Integer;
begin
  Result := FIdade;
end;

function TPessoa.GetNome: String;
begin
  Result := FNome;
end;

function TPessoa.GetSobreNome: String;
begin
  Result := FSobreNome;
end;

procedure TPessoa.SetIdade(const aValue: Integer);
begin
  FIdade := aValue;
end;

procedure TPessoa.SetNome(const aValue: String);
begin
  FNome := aValue;
end;

procedure TPessoa.SetSobreNome(const aValue: String);
begin
  FSobreNome := aValue;
end;

end.
