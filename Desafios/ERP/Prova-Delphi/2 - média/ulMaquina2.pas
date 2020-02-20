unit ulMaquina2;

interface

uses
  System.Classes;

type

  //Programação Funcional
  IMaquina2 = interface
    ['{8BE4E9D8-B7D1-4C80-BC90-CECCCA46B8BB}']
    function SetaTroco(aTroco : Double) : IMaquina2;
    function MontarTroco: IMaquina2;
    function &End : TList;
  end;

implementation

end.
