@echo off

set PYTHON=
set GIT=
set VENV_DIR=
set COMMANDLINE_ARGS=--precision full --no-half --medvram --opt-split-attention --listen --port 4242 --administrator --enable-console-prompts --api --skip-torch-cuda-test --enable-insecure-extension-access
set OPTIMIZED_TURBO=true

call webui.bat
