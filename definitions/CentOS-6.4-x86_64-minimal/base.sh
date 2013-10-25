# Base install

if [ -f /home/veewee/.veewee_params ]
then
  . /home/veewee/.veewee_params
fi

if [ ! -z "$http_proxy" ]; then
  echo "http_caching=packages" >>/etc/yum.conf
fi

sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

rpm -i http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm

yum -y update
yum -y install gcc make gcc-c++ kernel-devel-`uname -r` zlib-devel openssl-devel readline-devel sqlite-devel perl wget dkms nfs-utils

# Make ssh faster by not waiting on DNS
echo "UseDNS no" >> /etc/ssh/sshd_config
