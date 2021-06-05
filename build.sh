basepath=$(cd `dirname $0`;pwd)

echo ${basepath}

cd ${basepath}/x264-master
pwd


# ./configure --prefix=${basepath}/x264_install --enable-static
# make 
# make install

cd ${basepath}/ffmpeg
pwd


#export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/ivan/x264_install/lib/pkgconfig 
#export LD_LIBRARY_PATH=$LIB_LIBRARY_PATH:/ivan/x264_install/lib

./configure --prefix=${basepath}/ffmpeg2_install --enable-static --enable-shared --enable-cross-compile \
 --target-os=android --arch=arm --cc=/e/msys64/android-ndk-r21e/toolchains/llvm/prebuilt/windows-x86_64/bin/armv7a-linux-androideabi21-clang \
 cross-prefix=/e/msys64/android-ndk-r21e/toolchains/llvm/prebuilt/windows-x86_64/bin/arm-linux-androideabi- \
#--extra-cflags=-l${basepath}/x264_install/include 
#--extra-ldflags=-L${basepath}/x264_install/lib

make
make install

