#!/usr/bin/bash

pip install imageio
pip install scipy
pip install numpy
pip install matplotlib

mkdir -p /storage/s8zrzug3/models/gan/
mkdir -p /storage/s8zrzug3/datasets/fashion-mnist/
mkdir -p /storage/s8zrzug3/results/gan/

python troubleshoot.py

# train
python main.py --gan_type BEGAN --dataset fashion-mnist --epoch 20 --batch_size 64 --result_dir /storage/s8zrzug3/results/gan/
