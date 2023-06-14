#!/usr/bin/env bash

set -Eeuo pipefail

# TODO: maybe just use the .gitignore file to create all of these
mkdir -vp /data/.cache \
  /data/StableDiffusion \
  /data/LyCORIS \
  /data/Codeformer \
  /data/ModelScope \
  /data/GFPGAN \
  /data/ESRGAN \
  /data/BSRGAN \
  /data/RealESRGAN \
  /data/SwinIR \
  /data/LDSR \
  /data/ScuNET \
  /data/embeddings \
  /data/VAE \
  /data/Deepdanbooru \
  /data/MiDaS \
  /data/Lora \
  /data/ControlNet \
  /data/openpose \
  /data/config/auto/extensions \
  /data/GLIGEN \
  /data/CLIPEncoder # this is different from the cached pre-train ViT saved in /data/.cache/clip TODO: find out how

echo "Downloading, this might take a while...---------------------"

aria2c -x 10 --disable-ipv6 --input-file /docker/links.txt --dir /data --continue

echo 'git clone start-------------'

git clone https://github.com/Mikubill/sd-webui-controlnet.git /data/config/auto/extensions/

echo "finish downloading----------------------------------------------------"
