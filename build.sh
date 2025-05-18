clear
export HAVE_EXAMPLES=true
./autogen.sh
./contrib/configure-devel --prefix=$PWD/install-debug --without-java --without-go --enable-gtest=no --enable-debug
make -j4
make install

# cd examples; make

# search AS_HELP_STRING to enable/disable module
