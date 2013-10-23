# Install Puppet

if [ -f /home/veewee/.veewee_params ]
then
  . /home/veewee/.veewee_params
fi

rpm -i http://yum.puppetlabs.com/el/6/products/x86_64/puppetlabs-release-6-7.noarch.rpm
yum -y install puppet facter ruby-shadow

