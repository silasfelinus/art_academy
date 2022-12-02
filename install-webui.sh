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

  ln -sf /home/silasfelinus/code/art_academy/restore/webui-user.sh webui-user.sh
  ln -sf /home/silasfelinus/code/art_academy/restore/config.json config.json
  ln -sf /home/silasfelinus/code/art_academy/restore/ui-config.json ui-config.json
  ln -s /home/silasfelinus/nextcloud/lolart
  ln -s /home/silasfelinus/lola/grids


  pip install -r requirements.txt

  #someday xformers will work
  #pip install ninja
  # Set TORCH_CUDA_ARCH_LIST if running and building on different GPU types
  #export TORCH_CUDA_ARCH_LIST="6.0;6.1;6.2;7.0;7.2;7.5;8.0;8.6"
  #pip install -v -U git+https://github.com/facebookresearch/xformers.git@main#egg=xformers

  

  echo "Running stable diffusion"
  cd /home/silasfelinus/webui/
  ./webui.sh

