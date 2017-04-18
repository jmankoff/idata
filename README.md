# idata
# to get your vm setup, do the following
sudo apt-get install git
git clone https://github.com/jmankoff/idata.git
cd ~/idata/install_scripts/
chmod +x *.sh

# the scripts are run in this order. Be sure to watch the first one and type 'y' when prompted
./setup_vm.sh 
./setup_python.sh 
./move_files.sh





