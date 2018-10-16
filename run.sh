#!/usr/bin/bash

pip install -r requirements.txt
mkdir -p /storage/s8zrzug3/models/gan/
mkdir -p /storage/s8zrzug3/datasets/fashion-mnist/

# train
python main.py --gan_type BEGAN --dataset fashion-mnist --epoch 20 --batch_size 64 -s
