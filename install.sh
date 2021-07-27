# Termux
rdir=/data/data/com.termux/files

echo ---------------
echo Downloading abootimg from GitHub..
echo ---------------
git clone https://github.com/ggrandou/abootimg.git
cd abootimg
echo ---------------
echo Running make..
echo ---------------
make

echo ---------------
echo Installing..
echo ---------------
cp abootimg $rdir/usr/bin
cp abootimg-pack-initrd $rdir/usr/bin
cp abootimg-unpack-initrd $rdir/usr/bin
mkdir $rdir/usr/share/doc/abootimg
cp LICENSE $rdir/usr/share/doc/abootimg
#cp abootimg.1.gz $rdir/usr/share/man/man1

cd ..
rm -r abootimg
echo Complete!
echo ---------------