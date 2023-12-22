unit UCalculadoraTests;

interface

uses
  DUnitX.TestFramework,
  UCalculadora;

type
  [TestFixture]
  TCalculadoraTests = class
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;

    [Test]
    [TestCase('TestSoma1','1,2,3')]
    [TestCase('TestSoma2','-3.5,4,0.5')]
    procedure TestSoma(const aValue1: Double; const aValue2: Double; const aResultado: Double);
  end;

implementation

procedure TCalculadoraTests.Setup;
begin
end;

procedure TCalculadoraTests.TearDown;
begin
end;

procedure TCalculadoraTests.TestSoma(const aValue1: Double; const aValue2: Double; const aResultado: Double);
var
  LResultado: Double;
begin
  LResultado := TCalculadora.New.Somar(aValue1, aValue2);

  Assert.AreEqual(aResultado, LResultado);
end;

initialization
  TDUnitX.RegisterTestFixture(TCalculadoraTests);

end.
