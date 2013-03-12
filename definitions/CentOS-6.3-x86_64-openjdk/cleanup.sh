yum -y erase gtk2 hicolor-icon-theme avahi bitstream-vera-fonts
yum -y clean all
rm -rf /etc/yum.repos.d/{puppetlabs,epel}.repo
rm -rf VBoxGuestAdditions_*.iso

