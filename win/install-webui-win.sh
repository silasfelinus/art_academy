#!/bin/bash
  cd c:
  rm -rf webui

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

  ln -sf /c/code/art_academy/win/restore/webui-user.bat webui-user.bat
  ln -sf /c/code/art_academy/win/restore/config.json config.json
  ln -sf /c/code/art_academy/win/restore/ui-config.json ui-config.json

  pip install -r requirements.txt
  
  pip install git+https://github.com/facebookresearch/xformers.git@v0.0.12#egg=xformers
  


  echo "Running stable diffusion"

  ./webui.bat

