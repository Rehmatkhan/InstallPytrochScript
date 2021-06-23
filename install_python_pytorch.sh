#move to sudo
#sudo -i
#update
apt update
#install and configure python3.7.0
apt install -y build-essential tk-dev libncurses5-dev libncursesw5-dev libreadline6-dev libdb5.3-dev libgdbm-dev libsqlite3-dev libssl-dev libbz2-dev libexpat1-dev liblzma-dev zlib1g-dev libffi-dev
apt install -y vim wget git
wget https://www.python.org/ftp/python/3.7.0/Python-3.7.0.tgz
cd Python-3.7.0
./configure
make -j 4
make altinstall
echo 'export python=/usr/local/bin/python3.7' >> ~/.bashrc
source ~/.bashrc
#install and configure pytorch and torchvision
apt install -y libopenblas-base libopenblas-dev libblas-dev m4 cmake cython python3-dev python3-yaml 
pip3 install pyserial
cd ~
git clone https://github.com/FedML-AI/FedML-IoT.git
cd ./FedML-IoT/
apt install -y libopenblas-base libopenblas-dev libblas-dev m4 cmake cython python3-dev python3-yaml python3-setuptools python3-wheel python3-pillow python3-numpy
pip3 install ./pytorch-pkg-on-rpi/torch-1.4.0a0+7f73f1d-cp37-cp37m-linux_armv7l.whl
pip3 install ./pytorch-pkg-on-rpi/torchvision-0.5.0a0+85b8fbf-cp37-cp37m-linux_armv7l.whl
cd /usr/local/lib/python3.7/dist-packages/torch
mv _C.cpython-37m-arm-linux-gnueabi.so _C.so
mv _dl.cpython-37m-arm-linux-gnueabi.so _dl.so
apt install -y libopenblas-base libopenblas-dev libblas-dev m4 cmake cython python3-dev python3-yaml python3-setuptools python3-wheel python3-pillow python3-numpy
pip3 install --upgrade wandb
pip3 install tqdm
cd ~
rm -rf FedML-AI


