Taskkill /im "LioranBoard 2.0.exe"
TIMEOUT /T 1 /NOBREAK
del "LioranBoard 2.0.exe"
del "data.win"
del "DLLExtension.dll"
rename "%cd%\update\lioranboard20exe.dat" "LioranBoard 2.0.exe"
rename "%cd%\update\datawin.dat" "data.win"
rename "%cd%\update\dllextensiondll.dat" "DLLExtension.dll"
move "%cd%\update\LioranBoard 2.0.exe" "%cd%\"
move "%cd%\update\data.win" "%cd%\"
move "%cd%\update\dllextension.dll" "%cd%\"
start "LioranBoard 2.0.exe"
close