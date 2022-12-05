conda activate cuda_env
conda install numpy pyyaml mkl mkl-include setuptools cmake cffi typing
conda install pytorch torchvision cudatoolkit=10.1 -c pytorch
