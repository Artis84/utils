::Initialisation du script
@echo off
echo [7;36mcreate.bat[0m [36mis running[0m
chcp 65001
set blank=
set URL=https://github.com/Artis84/Template/archive/refs/heads/main.zip

echo. %blank%
echo. %blank%
echo [32m********************************************************************[0m
echo. %blank%*                                                                *
echo. %blank%*                                                                *
echo. %blank%*                                                                *
echo. %blank%*                                                                *
echo. %blank%*                                                                *
echo. %blank%*                                                                *
echo [36m  *          ██╗  ██╗███████╗██╗     ██╗      ██████╗            *[0m
echo [36m  *          ██║  ██║██╔════╝██║     ██║     ██╔═══██╗           *[0m
echo [36m  *          ███████║█████╗  ██║     ██║     ██║   ██║           *[0m
echo [36m  *          ██╔══██║██╔══╝  ██║     ██║     ██║   ██║           *[0m
echo [36m  *          ██║  ██║███████╗███████╗███████╗╚██████╔╝           *[0m
echo [36m  *          ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝ ╚═════╝            *[0m
echo. %blank%*                                                                *
echo. %blank%*                                                                *
echo. %blank%*                                                                *
echo. %blank%*                                                                *
echo. %blank%*                                                                *
echo. %blank%*                                                                *
echo [32m*******************************************************************[0m
echo. %blank%
echo. %blank%

SLEEP 1
::Importation du template via github
echo [36mDownloading and extracting[0m [7;36mtemplate.zip...[0m
echo. %blank%
curl -L -O %URL%
tar -xf main.zip
echo. %blank%
rm -r main.zip
set /p workDir=Enter the folder name:
SLEEP 1
ren Template-main %workDir%
call cd %workDir%\

:: Creation de package.json
echo [36mGenerating[0m [7;36mpackage.json...[0m
echo. %blank%
call npm init --prefix /%workDir%

:: Defenie les differents champs de package.json pour parcel
@REM call npm pkg set scripts.start="parcel" scripts.build="parcel build" source="public/index.html" main="src/scripts/index.js" browserslist="src/scripts/index.js"
echo [7;32mpackage.json[0m [32mhas been successfully created ![0m
echo [7;36mInstalling[0m [36mdependencies of package.json...[0m
call npm i
echo [32mDependencies are[0m [7;32minstaled[0m
echo. %blank%
git init
git add *
git commit -m "initial commit 🎉"
@REM curl -X POST -H "Accept: application/vnd.github+json" -H 'Authorization:Bearer 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' -d '{"name":%workDir%\, "description": "test"}' https://api.github.com/user/repos -v
@REM git remote add origin git@github.com:Artis84/%workDir%.git
