from hugtoken import TOKEN
  
from huggingface_hub import hf_hub_download
hf_hub_download(repo_id="IShallRiseAgain/StudioGhibli", filename="StudioGhibliV4.ckpt", token=TOKEN)


import torch
from transformers import CLIPTextModel, CLIPTokenizer
from transformers import logging
from diffusers import AutoencoderKL, UNet2DConditionModel, LMSDiscreteScheduler
from tqdm.auto import tqdm
from torch import autocast
from PIL import Image
from matplotlib import pyplot as plt
import numpy
from torchvision import transforms as tfms

# For video display:
from IPython.display import HTML
from base64 import b64encode

# Supress some unnecessary warnings when loading the CLIPTextModel
logging.set_verbosity_error()

# Set device
torch_device = "cuda" if torch.cuda.is_available() else "cpu"

print(torch_device)
print("if that says cuda, we're ready!")
