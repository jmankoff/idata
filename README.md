# iData
This is the repository for the iData class on *Interactive Data Science*, which can be found on the web at [Make4All/idata](make4all.org/idata)

## Get things ready ## 
You need to make use of Compute Engine to have a working space in which you can install arbitrary python libraries. 

To create an instance, you need to first give yourself the proper permissions to use it. To do this, go to the IAM & Admin menu, and select both the role 'Compute Instance Admin (beta)' and 'App Engine Admin' for your account. Also be sure to check the box allowing HTTP access.
![picture alt](https://github.com/jmankoff/idata/blob/master/docs/images/1_permissions.png "Permissions")

To set up Compute Engine, use the [Linux Quickstart](https://cloud.google.com/compute/docs/quickstarts).

Here is what your network looks like on your instance page. The green checkmark indicates that it is running. You can now check if your instance is working by clicking on the word 'SSH' on the VM instances page:
![picture alt](https://github.com/jmankoff/idata/blob/master/docs/images/4_compute_instances.png "Specify Service Account")

...which will open a shell in a browser window:
![picture alt](https://github.com/jmankoff/idata/blob/master/docs/images/5_shell.png "Specify Service Account")

Finally, you may wish to modify your firewall for testing things such as Jupyter, if you plan to run them on your compute server. First, you will need to set your VM to allow connections to your notebook. At the command line in your shell, you can type
gcloud compute firewall-rules create allow-http --description "Incoming http allowed." --allow tcp:9999 --format json
or if you have any trouble with that, just do it in the GUI:
![picture alt](https://github.com/jmankoff/idata/blob/master/docs/images/6_firewall.png "Specify Service Account")


## Install Software on your virtual machine ##

First download git:
- - - - 
     sudo apt-get install git
Then download this repository
- - - - 
     git clone https://github.com/jmankoff/idata.git

Then change directories to the location of the install scripts and make them executable
- - - - 
     cd ~/idata/install_scripts/
     chmod +x *.sh

the scripts are run in this order. Be sure to watch the first one and type 'y' when prompted
First setup_vm installs base software for the vm, apache and so on
- - - - 
     ./setup_vm.sh 
Then setup_python installs python and related libraries you'll need
- - - - 
     ./setup_python.sh 
Finally move_files correctly configures apache
- - - - 
     ./move_files.sh





