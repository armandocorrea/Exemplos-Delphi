@echo off

CodeCoverage.exe ^
  -e ..\bin\CalculadoraTests.exe ^
  -m ..\bin\CalculadoraTests.map ^
  -dproj ..\Calculadora.dproj ^
  -od CodeCoverage ^
  -emma ^
  -html ^
  -xml ^
  -xmllines ^
  -v