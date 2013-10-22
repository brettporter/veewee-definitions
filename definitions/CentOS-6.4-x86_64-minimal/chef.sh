# Install Chef

if [ -f .veewee_params ]
then
  . .veewee_params
fi

curl -L https://www.opscode.com/chef/install.sh | bash
