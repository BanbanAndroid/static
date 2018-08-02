#!/bin/bash

set -xe

wget -P /homt/jovyan/mnist_data_set http://yann.lecun.com/exdb/mnist/train-images-idx3-ubyte.gz
wget -P /homt/jovyan/mnist_data_set http://yann.lecun.com/exdb/mnist/train-labels-idx1-ubyte.gz
wget -P /homt/jovyan/mnist_data_set http://yann.lecun.com/exdb/mnist/t10k-images-idx3-ubyte.gz
wget -P /homt/jovyan/mnist_data_set http://yann.lecun.com/exdb/mnist/t10k-labels-idx1-ubyte.gz
