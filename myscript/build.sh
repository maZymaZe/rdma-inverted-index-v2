mkdir -p ~/rdma-inverted-index-v2/build
cd ~/rdma-inverted-index-v2/build
cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_CXX_COMPILER=clang++-12 ~/rdma-inverted-index-v2
make