cd CodeCoverage
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
cd..  
sonar-scanner.bat -D"sonar.projectKey=calculator" -D"sonar.sources=." -D"sonar.host.url=http://localhost:9000" -D"sonar.token=sqp_06b647ec8561c2df7567afd5c2eb25eb45a419d4"	