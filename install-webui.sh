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
  ln -sf /c/code/models /c/webui/models
  ln -sf /c/code/extensions /c/webui/extensions
  ln -sf /c/code/embeddings /c/webui/embeddings

  cp /c/code/art_academy/restore/webui-user.sh /c/webui/webui-user.sh
  ln -sf /c/code/art_academy/restore/config.json /c/webui/config.json
  ln -sf /c/code/art_academy/restore/ui-config.json /c/webui/ui-config.json
  pip install -r requirements.txt

  echo "Installing xformers"
  cd repositories
  git clone https://github.com/facebookresearch/xformers.git
  cd xformers
  git submodule update --init --recursive
  pip install -r requirements.txt
  pip install -e .
  

  echo "Running stable diffusion"
  cd ..
  cd ..
  ./webui.sh

