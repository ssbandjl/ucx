clear
export HAVE_EXAMPLES=true
./autogen.sh
./contrib/configure-devel --prefix=$PWD/install-debug
make
make install
