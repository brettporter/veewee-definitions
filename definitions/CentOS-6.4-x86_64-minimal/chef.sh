# Install Chef

if [ -f /home/veewee/.veewee_params ]
then
  . /home/veewee/.veewee_params
fi

curl -L https://www.opscode.com/chef/install.sh | bash
