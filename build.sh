clear
./autogen.sh
./contrib/configure-devel --prefix=$PWD/install-debug
make
make install
