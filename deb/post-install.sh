mv /etc/ntp.conf /etc/ntp.conf.bak
cp /opt/oc-ntp/ntp-oc.conf /etc/ntp.conf

systemctl restart ntp.service
