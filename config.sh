#!/bin/bash

python main.py \
  -a resnet50 --dist-url 'tcp://127.0.0.1:88' \
  --dist-backend nccl \
  --world-size 1 \
  --epochs 1 \
  --rank 0 \
  /mnt/imagenet/rawdata -b 64
