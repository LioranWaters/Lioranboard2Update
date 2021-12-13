Taskkill /im "LioranBoard 2.0.exe"
TIMEOUT /T 2 /NOBREAK
del "LioranBoard 2.0.exe"
del "data.win"
del "DLLExtension.dll"
rename "update/lioranboard20exe.dat" "LioranBoard 2.0.exe"
rename "update/datawin.dat" "data.win"
rename "update/dllextensiondll.dat" "DLLExtension.dll"
start "LioranBoard 2.0.exe"
