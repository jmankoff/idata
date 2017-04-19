# iData
This is the repository for the iData class on *Interactive Data Science*, which can be found on the web at make4all.org/idata
## Get things ready
### first download git
sudo apt-get install git
### then download this repository
git clone https://github.com/jmankoff/idata.git
### then change directories to the location of the install scripts
cd ~/idata/install_scripts/
### and make them executable
chmod +x *.sh

## the scripts are run in this order. Be sure to watch the first one and type 'y' when prompted
### setup_vm installs base software for the vm, apache and so on
./setup_vm.sh 
### setup_python installs python and related libraries you'll need
./setup_python.sh 
### move_files correctly configures apache
./move_files.sh





