@REM set /p "workDir=Enter the folder name: "
@REM mkdir %workDir%
@REM call cd %workDir%
@REM call npm init --prefix ./%workDir%

@REM curl -i -H "Accept: application/vnd.github+json" -H "Authorization: Bearer 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" https://api.github.com/user/repos -d "{\"name\":\"%workDir%\",\"description\":\"This is your first repo!\",\"homepage\":\"https://github.com\",\"private\":false,\"is_template\":true}\"

@REM set VAR_NAME = %Token%
@REM echo %VAR_NAME%

::Importation des fichiers de configuration via github
echo →[36mDownloading and extracting[0m [7;36mconfig.zip...[0m
echo. %blank%
curl -L -O %URL_PACKAGE%
tar -xf main.zip --strip=1
echo. %blank%
rm -r main.zip