unit POC.Model.Login;

interface

type
  TLogin = class
  private
    FId: Integer;
    FName: string;
    FEmail: string;
    FPassword: string;

    function GetEmail: string;
    function GetId: Integer;
    function GetName: string;
    function GetPassword: string;

    procedure SetEmail(const AValue: string);
    procedure SetId(const AValue: Integer);
    procedure SetName(const AValue: string);
    procedure SetPassword(const AValue: string);
  public
    constructor Create;

    procedure Clear;

    property Id: Integer      read GetId       write SetId;
    property Name: string     read GetName     write SetName;
    property Email: string    read GetEmail    write SetEmail;
    property Password: string read GetPassword write SetPassword;
  end;

implementation


{ TLogin }

procedure TLogin.Clear;
begin
  FId := 0;
  FName := '';
  FEmail := '';
  FPassword := '';
end;

constructor TLogin.Create;
begin
  Self.Clear;
end;

function TLogin.GetEmail: string;
begin
  Result := FEmail;
end;

function TLogin.GetId: Integer;
begin
  Result := FId;
end;

function TLogin.GetName: string;
begin
  Result := FName;
end;

function TLogin.GetPassword: string;
begin
  Result := FPassword;
end;

procedure TLogin.SetEmail(const AValue: string);
begin
  FEmail := AValue;
end;

procedure TLogin.SetId(const AValue: Integer);
begin
  FId := AValue;
end;

procedure TLogin.SetName(const AValue: string);
begin
  FName := AValue;
end;

procedure TLogin.SetPassword(const AValue: string);
begin
  FPassword := AValue;
end;

end.
