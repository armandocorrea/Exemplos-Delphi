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
    [TestCase('TestSoma3','2,0,3')]
    procedure TestSoma(const aValue1: Double; const aValue2: Double; const aResultado: Double);

    [Test]
    [TestCase('TestSubtrair1','2,1,1')]
    [TestCase('TestSubtrair1','3.5,4,-0.5')]
    procedure TestSubtrair(const aValue1: Double; const aValue2: Double; const aResultado: Double);

    [Test]
    [TestCase('TestMultiplicar1','2,2,4')]
    [TestCase('TestMultiplicar2','-3.5,4,-14')]
    procedure TestMultiplicar(const aValue1: Double; const aValue2: Double; const aResultado: Double);

    [Test]
    [TestCase('TestDividir1','1,2,0.5')]
    [TestCase('TestDividir2','-3.5,4,-0.875')]
    procedure TestDividir(const aValue1: Double; const aValue2: Double; const aResultado: Double);

    [Test]
    [TestCase('TestDividirException1','2,0')]
    procedure TestDividirException(const aValue1: Double; const aValue2: Double);
  end;

implementation

procedure TCalculadoraTests.Setup;
begin
end;

procedure TCalculadoraTests.TearDown;
begin
end;

procedure TCalculadoraTests.TestDividir(const aValue1, aValue2, aResultado: Double);
var
  LResultado: Double;
begin
  LResultado := TCalculadora.New.Dividir(aValue1, aValue2);

  Assert.AreEqual(aResultado, LResultado);
end;

procedure TCalculadoraTests.TestDividirException(const aValue1, aValue2: Double);
begin
  Assert.WillRaise(
    procedure
    begin
      TCalculadora.New.Dividir(aValue1, aValue2);
    end,
    nil,
    'Não é possível dividir por zero.'
  );
end;

procedure TCalculadoraTests.TestMultiplicar(const aValue1, aValue2, aResultado: Double);
var
  LResultado: Double;
begin
  LResultado := TCalculadora.New.Multiplicar(aValue1, aValue2);

  Assert.AreEqual(aResultado, LResultado);
end;

procedure TCalculadoraTests.TestSoma(const aValue1: Double; const aValue2: Double; const aResultado: Double);
var
  LResultado: Double;
begin
  LResultado := TCalculadora.New.Somar(aValue1, aValue2);

  Assert.AreEqual(aResultado, LResultado);
end;

procedure TCalculadoraTests.TestSubtrair(const aValue1, aValue2, aResultado: Double);
var
  LResultado: Double;
begin
  LResultado := TCalculadora.New.Subtrair(aValue1, aValue2);

  Assert.AreEqual(aResultado, LResultado);
end;

initialization
  TDUnitX.RegisterTestFixture(TCalculadoraTests);

end.
