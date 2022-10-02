set /p "workDir=Enter the folder name: "
mkdir %workDir%
call cd %workDir%
call npm init --prefix ./%workDir%