# Base install

if [ -f /home/veewee/.veewee_params ]
then
  . /home/veewee/.veewee_params
fi

if [ ! -z "$http_proxy" ]; then
  echo "http_caching=packages" >>/etc/yum.conf
fi

sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

sed -i "s#mirrorlist=http://mirrorlist.centos.org/?release=\$releasever&arch=\$basearch&repo=\(.*\)#baseurl=http://mirror.internode.on.net/pub/centos/\$releasever/\\1/\$basearch/#g" /etc/yum.repos.d/*.repo

rpm -i http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm

sed -i "s#mirrorlist=https://mirrors.fedoraproject.org/metalink?repo=epel-6&arch=\$basearch#baseurl=http://mirror.internode.on.net/pub/epel/6/\$basearch#" /etc/yum.repos.d/*.repo

yum -y update
yum -y install gcc make gcc-c++ kernel-devel-`uname -r` zlib-devel openssl-devel readline-devel sqlite-devel perl wget dkms nfs-utils

# Make ssh faster by not waiting on DNS
echo "UseDNS no" >> /etc/ssh/sshd_config
