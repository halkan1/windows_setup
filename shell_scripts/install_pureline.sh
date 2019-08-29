cd ~/development/fonts
git clone https://github.com/powerline/fonts.git
./fonts/install.sh
cd ..
cp -R fonts/ ~/winhome/Downloads/

cd ~/development/bash
git clone https://github.com/chris-marsh/pureline.git
cp pureline/configs/powerline_full_256col.conf ~/.pureline.conf
