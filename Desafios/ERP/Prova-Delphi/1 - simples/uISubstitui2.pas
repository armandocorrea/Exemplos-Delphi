unit uISubstitui2;

interface

type

  //Programação Funcional
  ISubstitui2 = interface
    ['{524F2C8E-911B-4285-8DC6-2C7C50EE68D8}']
    function Substituir(aStr, aVelho, aNovo: String) : ISubstitui2;
    function SetSubstituido(var Value: String) : ISubstitui2;
  end;

implementation

end.
