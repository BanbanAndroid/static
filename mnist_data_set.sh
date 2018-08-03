#!/bin/bash

set -xe

mkdir -p /home/jovyan/mnist_data_set
wget -P /home/jovyan/mnist_data_set http://pbqsx8kpd.bkt.clouddn.com/t10k-images-idx3-ubyte.gz
wget -P /home/jovyan/mnist_data_set http://pbqsx8kpd.bkt.clouddn.com/t10k-labels-idx1-ubyte.gz
wget -P /home/jovyan/mnist_data_set http://pbqsx8kpd.bkt.clouddn.com/train-images-idx3-ubyte.gz
wget -P /home/jovyan/mnist_data_set http://pbqsx8kpd.bkt.clouddn.com/train-labels-idx1-ubyte.gz
wget -P /home/jovyan/ https://raw.githubusercontent.com/banbanandroid/static/master/mnist.ipynb
