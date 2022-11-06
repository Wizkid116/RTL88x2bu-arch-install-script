# Yes I have little experience with writing shell scripts, stop bullying me :(
echo "Wizkid 116's install script for the RTL88x2bu driver"
echo "Arch edition"
echo ""Because it's been a wild ride to install""
echo "NOTE: Be sure to choose the correct header version corresponding to your kernel"
echo "Otherwise it will fail to compile"
sudo pacman -Syu
echo "System updated"
echo "downloading dependencies"
sudo pacman -S --noconfirm linux-headers dkms git
echo "making directory"
mkdir -p ~/src
cd ~/src
echo "cloning repo"
git clone https://github.com/morrownr/88x2bu-20210702.git
cd ~/src/88x2bu-20210702
echo "compiling driver"
make clean
make
sudo make install
echo "Install script finished successfully(hopefully)!
echo "To ensure proper operation, please reboot your system now"
