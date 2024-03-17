unit POC.Model.Service.Impl.ServiceData;

interface

uses
  DB,
  Datasnap.DBClient,
  POC.Model.Service.Interfaces;

type
  TServiceData<T: class, constructor> = class(TInterfacedObject, IServiceData<T>)
  private
    FParent: T;
    FClientDataSet: TClientDataSet;
  public
    constructor Create(AParent: T);
    destructor Destroy; override;
    class function New(AParent: T): IServiceData<T>;

    function Insert: IServiceData<T>;
    function Search(AField: string; AValue: Variant): IServiceData<T>;
    function Retrieve: TDataSet;
  end;

implementation

uses
  SysUtils,
  POC.Model.Login;

{ TServiceData<T> }

constructor TServiceData<T>.Create(AParent: T);
begin
  FParent := AParent;
  FClientDataSet := TClientDataSet.Create(nil);
end;

destructor TServiceData<T>.Destroy;
begin
  FreeAndNil(FClientDataSet);
  inherited;
end;

function TServiceData<T>.Insert: IServiceData<T>;
begin
  Result := Self;

  //Aqui poderia usar algum objeto de ORM
  //Para fins didáticos deixarei dessa forma

  FClientDataSet.Close;
  FClientDataSet.FieldDefs.Clear;

  //Aqui existe um jeito muito melhor de tirar esse acoplamento
  if FParent.ClassName = 'TLogin' then
  begin
    FClientDataSet.FieldDefs.Add('Id', ftInteger, 0, True);
    FClientDataSet.FieldDefs.Add('Name', ftString, 100, True);
    FClientDataSet.FieldDefs.Add('Email', ftString, 100, True);
    FClientDataSet.FieldDefs.Add('Password', ftString, 100, True);

    FClientDataSet.CreateDataSet;

    FClientDataSet.Append;
    FClientDataSet.FieldByName('Id').AsInteger := TLogin(FParent).Id;
    FClientDataSet.FieldByName('Name').AsString := TLogin(FParent).Name;
    FClientDataSet.FieldByName('Email').AsString := TLogin(FParent).Email;
    FClientDataSet.FieldByName('Password').AsString := TLogin(FParent).Password;
    FClientDataSet.Post;

    FClientDataSet.SaveToFile('Login.xml');
  end;
end;

class function TServiceData<T>.New(AParent: T): IServiceData<T>;
begin
  Result := Self.Create(AParent);
end;

function TServiceData<T>.Retrieve: TDataSet;
begin
  //Aqui existe um jeito muito melhor de tirar esse acoplamento
  if FParent.ClassName = 'TLogin' then
  begin
    FClientDataSet.LoadFromFile('Login.xml');
  end;

  Result := FClientDataSet;
end;

function TServiceData<T>.Search(AField: string; AValue: Variant): IServiceData<T>;
begin
  Result := Self;

  //Aqui existe um jeito muito melhor de tirar esse acoplamento
  if FParent.ClassName = 'TLogin' then
  begin
    FClientDataSet.LoadFromFile('Login.xml');

    FClientDataSet.IndexFieldNames := AField;

    if FClientDataSet.FindKey([AValue]) then
    begin
      TLogin(FParent).Id := FClientDataSet.FieldByName('Id').AsInteger;
      TLogin(FParent).Name := FClientDataSet.FieldByName('Name').AsString;
      TLogin(FParent).Email := FClientDataSet.FieldByName('Email').AsString;
      TLogin(FParent).Password := FClientDataSet.FieldByName('Password').AsString;
    end;
  end;
end;

end.
