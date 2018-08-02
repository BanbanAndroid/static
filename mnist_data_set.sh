#!/bin/bash

set -xe

mkdir -p /home/jovyan/mnist_data_set
wget -P /home/jovyan/mnist_data_set http://yann.lecun.com/exdb/mnist/train-images-idx3-ubyte.gz
wget -P /home/jovyan/mnist_data_set http://yann.lecun.com/exdb/mnist/train-labels-idx1-ubyte.gz
wget -P /home/jovyan/mnist_data_set http://yann.lecun.com/exdb/mnist/t10k-images-idx3-ubyte.gz
wget -P /home/jovyan/mnist_data_set http://yann.lecun.com/exdb/mnist/t10k-labels-idx1-ubyte.gz
