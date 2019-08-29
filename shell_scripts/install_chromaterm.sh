OWNING_USER=$(whoami)

cd ~/development/c

git clone https://github.com/hSaria/ChromaTerm--.git
cd ChromaTerm--/src/ 
./configure
make install

sudo chown $OWNING_USER:$OWNING_USER /usr/local/bin/ct
