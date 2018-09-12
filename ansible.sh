apt-get update
apt-get upgrade -y

# Install python2.7 (Ubuntu 16.04 comes with python 3 out of the box) and Pip
apt-get install -y python2.7 python-pip

## Use Pip to install virtualenv
### -U updates it if the package is already installed
pip install -U virtualenv

# Go to my user's home directory,
# make a directory to play with ansible
cd ~/
mkdir ansible-play
cd ansible-play

# Create a python virtual environment
virtualenv .venv
# Enable the virtual environment
source .venv/bin/activate

# Then anything we intall with pip will be
# inside that virtual environment
pip install ansible

# Assumes the virtualenv is active - `source .venv/bin/activate`
# Assuming the virtualenv is active
pip install -U ansible

# Run against localhost
ansible -i ./hosts --connection=local local -m ping

ansible-playbook -i ./hosts nginx.yml