Taskkill /im "LioranBoard 2.0.exe"
TIMEOUT /T 2 /NOBREAK
del "LioranBoard 2.0.exe"
del "data.win"
del "DLLExtension.dll"
rename "%cd%update/lioranboard20exe.dat" "%cd%LioranBoard 2.0.exe"
rename "%cd%update/datawin.dat" "%cd%data.win"
rename "%cd%update/dllextensiondll.dat" "%cd%DLLExtension.dll"
start "LioranBoard 2.0.exe"
