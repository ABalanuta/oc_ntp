sudo dpkg-divert --package oc-ntp --remove --rename /etc/ntp.conf
systemctl restart ntp.service
