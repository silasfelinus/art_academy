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
  ln -sf /home/silasfelinus/code/models
  ln -sf /home/silasfelinus/code/extensions
  ln -sf /home/silasfelinus/code/embeddings

  cp /home/silasfelinus/code/art_academy/restore/webui-user.sh webui-user.sh
  ln -sf /home/silasfelinus/code/art_academy/restore/config.json config.json
  ln -sf /home/silasfelinus/code/art_academy/restore/ui-config.json ui-config.json
  ln -s /home/silasfelinus/nextcloud/lolart
  ln -s /home/silasfelinus/lola/grids
  ln -s /home/silasfelinus/lola
  ln -s /home/silasfelinus/nextcloud/lolart

  pip install -r requirements.txt

  echo "Installing xformers"
  #pip install git+https://github.com/facebookresearch/xformers.git@main#egg=xformers
  

  echo "Running stable diffusion"
  cd /home/silasfelinus/webui/
  ./webui.sh

