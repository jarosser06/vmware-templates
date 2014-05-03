#!/bin/bash -eux

apt-get update
apt-get -y dist-upgrade

# ensure the correct kernel headers are installed
apt-get -y install linux-headers-$(uname -r)

# update package index on boot
cat <<EOF > /etc/rc2.d/S99refresh-template
echo "Updating apt cache..."
/usr/bin/apt-get update

echo "Regenerating SSH Keys..."
rm /etc/ssh/*key*
ssh-keygen -f /etc/ssh/ssh_host_rsa_key -N '' -t rsa
ssh-keygen -f /etc/ssh/ssh_host_dsa_key -N '' -t dsa
ssh-keygen -f /etc/ssh/ssh_host_ecdsa_key -N '' -t ecdsa

echo "Updating time..."
ntpdate ntp1.tamu.edu
rm /etc/rc2.d/S99refresh-template
EOF

chmod +x /etc/rc2.d/S99refresh-template
