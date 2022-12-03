@echo off

echo "setting parameters"
set INSTALL_DIR="c:"
set CLONE_DIR="code"
set VENV_DIR=%INSTALL_DIR%\%CLONE_DIR%\venv
set PYTHON_CMD="python3"
set REQUIREMENTS="requirements.txt"
set export ARGS="--precision full --no-half --medvram --listen --port 4242 --administrator --enable-console-prompts --enable-insecure-extension-access"

echo "checking Venv"
set ERROR_REPORTING=FALSE
cd %INSTALL_DIR%\%CLONE_DIR%
%PYTHON_CMD% -m venv venv
if %ERRORLEVEL% == 0 goto :activate_venv
echo Unable to create venv in directory %VENV_DIR%
pause
exit /b

:activate_venv
source venv/Scripts/activate
if %ERRORLEVEL% == 0 goto :launch
echo Unable to source venv in directory %VENV_DIR%
pause
exit /b

:launch
echo launching script
%PYTHON% %LAUNCH_SCRIPT%


pause
exit /b

