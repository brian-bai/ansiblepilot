rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-6
sudo yum -y install ntp
sudo chkconfig ntpd on
sudo /etc/init.d/ntpd start
sudo chkconfig iptables off
sudo /etc/init.d/iptables stop
sudo setenforce 0
sudo sed -i 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config
sudo sh -c 'echo "* soft nofile 10000" >> /etc/security/limits.conf'
sudo sh -c 'echo "* hard nofile 10000" >> /etc/security/limits.conf'
sudo sh -c 'echo never > /sys/kernel/mm/redhat_transparent_hugepage/defrag'
sudo sh -c 'echo never > /sys/kernel/mm/redhat_transparent_hugepage/enabled'
