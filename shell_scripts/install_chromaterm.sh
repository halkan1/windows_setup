OWNING_USER=$(whoami)

git clone https://github.com/hSaria/ChromaTerm--.git ~/development/c/ChromaTerm--
cd ~/development/c/ChromaTerm--/src/ 
./configure
sudo make install

sudo chown $OWNING_USER:$OWNING_USER /usr/local/bin/ct
