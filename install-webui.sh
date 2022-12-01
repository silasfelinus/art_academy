#!/bin/bash
  cd ~/
  rm -rf webui

  echo "Installing Stable Diffusion Webui"
  git clone https://github.com/silasfelinus/stable-diffusion-webui.git webui
   
  cd webui
  
  echo "Setting up Virtual Environment"
  python3 -m venv venv
  source ./venv/bin/activate
  rm -rf extensions
  rm -rf models
  rm -rf embeddings
  rm webui-user.sh
  ln -sf ~/code/models
  ln -sf ~/code/extensions
  ln -sf ~/code/embeddings
  cp ~/code/art_academy/restore/webui-user.sh webui-user.sh
  ln -sf ~/code/art_academy/restore/config.json config.json
  ln -sf ~/code/art_academy/restore/ui-config.json ui-config.json
  pip install -r requirements.txt
  

  echo "Running stable diffusion"

  ./webui.sh

