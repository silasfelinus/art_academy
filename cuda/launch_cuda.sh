conda create --name cuda_env
conda activate cuda_env
conda install numpy pyyaml mkl mkl-include setuptools cmake cffi typing
conda install pytorch torchvision cudatoolkit=10.1 -c pytorch
python
> # validate PyTorch:
> from __future__ import print_function
> import torch
> x = torch.rand(5, 3)
> print(x) 

check_pytorch:
conda activate cuda_env
python
> import torch
> torch.cuda.is_available()  # The output should be a boolean "True"
True
> device = torch.device("cuda")          # a CUDA device object
> x = torch.rand(10000, 10, device=device) # create tensor on GPU

#Check tensorflow
conda activate cuda_env
pip install --upgrade tensorflow-gpu
python
> from tensorflow.python.client import device_lib
> device_lib.list_local_devices()


#install docker-nvidia
sudo apt-get update
sudo systemctl restart docker
curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey |   sudo apt-key add -
distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list |   sudo tee /etc/apt/sources.list.d/nvidia-docker.list
sudo apt-get update
sudo apt-get install -y nvidia-docker2
sudo reboot


#test
docker run --gpus all nvidia/cuda:11.6.2-cudnn8-runtime-ubuntu20.04 nvidia-smi