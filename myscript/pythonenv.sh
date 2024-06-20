sudo apt-get -y --force-yes install python3.8 python3-pip
sudo update-alternatives --install /usr/bin/python python /usr/bin/python2.7 1 
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.8 2
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.8 1
curl https://bootstrap.pypa.io/get-pip.py > ~/get-pip.py
python ~/get-pip.py
sudo apt-get -y --force-yes install python3-pip
sudo pip install -r scripts/requirements.txt 