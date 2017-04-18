#!/bin/bash
# set up python

PIPSTR="https://bootstrap.pypa.io/get-pip.py"
echo $PIPSTR
echo $HOME

if [ ! -f "get-pip.py" ]
then
    echo $PIPSTR
    wget $PIPSTR
else
    echo $PIPSTR" already downloaded"
fi

sudo python3 get-pip.py
pip install jupyter
pip install flask
sudo apt-get install freetype2-demos
sudo apt-get install libfreetype6-dev libxft-dev
pip install numpy scipy matplotlib pandas seaborn
pip install sklearn

SRC=$HOME/idata/install_scripts/jupyter_notebook_config.py
CONFIG=$HOME/.jupyter/jupyter_notebook_config.py
if [ ! -f $CONFIG ]
then
    jupyter notebook --generate-config
fi

OLD=idata
NEW=$HOME/idata/notebooks
## Escape path for sed using bash find and replace
NEW="${NEW//\//\\/}"
 
echo $OLD
echo $NEW
echo \'s/$OLD/$NEW/g\' "$SRC"
sed s/$OLD/$NEW/g "$SRC" > $CONFIG
