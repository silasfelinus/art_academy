#!/bin/bash
  cd c:
  #rm -rf webui

  echo "Installing Stable Diffusion Webui"
  git clone https://github.com/silasfelinus/stable-diffusion-webui.git webui
   
  cd webui 
  
  echo "Setting up Virtual Environment"
  python3 -m venv venv
  . venv/Scripts/activate
  rm -rf extensions
  rm -rf models
  rm -rf embeddings
  rm webui-user.bat
  cp -Rv //alexandria.local/pc/ai/models models
  cp -Rv //alexandria.local/pc/ai/embeddings embeddings
  cp -Rv //alexandria.local/pc/ai/extensions extensions

  cp -Rv /c/code/art_academy/win/restore/webui-user.bat webui-user.bat
  cp -Rv /c/code/art_academy/win/restore/config.json config.json
  cp -Rv /c/code/art_academy/win/restore/ui-config.json ui-config.json

  pip install -r requirements.txt
  
  echo "Running stable diffusion"
  ./webui.bat

