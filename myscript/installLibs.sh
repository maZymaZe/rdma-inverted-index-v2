#!/bin/bash

if [ ! -d "tmp" ]; then
	mkdir tmp
fi

cd tmp
sudo apt-get -y --force-yes install cmake

# memcached
#sudo apt-get -y --force-yes install memcached libmemcached-dev

# numa
sudo apt-get -y --force-yes install libnuma-dev numactl

# clang
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -
echo -e "deb http://apt.llvm.org/bionic/ llvm-toolchain-bionic main \ndeb-src http://apt.llvm.org/bionic/ llvm-toolchain-bionic main \ndeb http://apt.llvm.org/bionic/ llvm-toolchain-bionic-11 main \ndeb-src http://apt.llvm.org/bionic/ llvm-toolchain-bionic-11 main \ndeb http://apt.llvm.org/bionic/ llvm-toolchain-bionic-12 main \ndeb-src http://apt.llvm.org/bionic/ llvm-toolchain-bionic-12 main" | sudo tee -a /etc/apt/sources.list
sudo apt-get -y --force-yes install clang-12

# cityhash
# git clone https://github.com/google/cityhash.git
# cd cityhash
# ./configure
# make all check CXXFLAGS="-g -O3"
# sudo make install
# cd ..

# boost
wget https://jaist.dl.sourceforge.net/project/boost/boost/1.53.0/boost_1_53_0.zip
unzip boost_1_53_0.zip
cd boost_1_53_0
./bootstrap.sh
# ./b2 install --with-system --with-coroutine --build-type=complete --layout=versioned threading=multi
./b2 install --with-system --with-coroutine --layout=versioned threading=multi
sudo apt-get -y --force-yes install libboost-all-dev
cd ..

# paramiko
# sudo apt-get -y --force-yes install python3-pip
# pip3 install --upgrade pip
# pip3 install paramiko

# gdown
# pip3 install gdown
# pip3 install --upgrade --no-cache-dir gdown

# func_timeout
# pip3 install func_timeout

# matplotlib
# pip3 install matplotlib

#tbb
# git clone https://github.com/wjakob/tbb.git
# cd tbb/build
# cmake ..
# make -j
# sudo make install
# cd ../..

# Clone oneTBB repository
git clone https://github.com/oneapi-src/oneTBB.git
cd oneTBB
# Create binary directory for out-of-source build
mkdir build && cd build
# Configure: customize CMAKE_INSTALL_PREFIX and disable TBB_TEST to avoid tests build
cmake -DTBB_TEST=OFF ..
sudo make install
cd ../..

# gflag
# git clone https://github.com/gflags/gflags.git
# mkdir gflags/build
# cd gflags/build
# cmake ..
# make -j
# sudo make install
# cd ../..

# gtest
# wget https://github.com/google/googletest/archive/refs/tags/release-1.12.1.zip
# unzip release-1.12.1.zip
# mkdir googletest-release-1.12.1/build
# cd googletest-release-1.12.1/build
# cmake ..
# make -j
# sudo make install
# cd ../..


#


ldconfig

# openjdk-8
# sudo apt-get -y --force-yes install openjdk-8-jdk

cd ..
rm -rf tmp
