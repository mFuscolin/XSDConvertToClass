@ECHO OFF
CLS
ECHO ***
ECHO Runs xsd.exe on all *.xsd files
ECHO ***

FOR /R "C:\your\file" %%G IN (*.xsd) DO (
  @ECHO ON
	"C:\Program Files (x86)\Microsoft SDKs\Windows\v10.0A\bin\NETFX 4.8 Tools\xsd.exe" "%%G" /c /n:Mynamespace /o:"C:\your\file"
  @ECHO OFF
)
