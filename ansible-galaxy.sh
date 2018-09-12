mkdir ansible-example

# Head to our previously created directory
cd ~/ansible-example

# In case we left our virtualenv at some point
source .venv/bin/activate

# Create a roles directory
mkdir roles
cd roles

# Bootstrap a new role named "nginx"
ansible-galaxy init nginx