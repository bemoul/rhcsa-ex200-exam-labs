#!/bin/bash
# Mock exam: node2 prep. Run as root on node2 after setup-repo.sh.
# WARNING: wipes /dev/vdc.
set -e

# Hostnames
hostnamectl set-hostname node2.rhcsa.home
cat >> /etc/hosts << 'EOF'
192.168.70.5   repo.rhcsa.home repo
192.168.70.10  node1.rhcsa.home node1 servera.rhcsa.home
192.168.70.20  node2.rhcsa.home node2
EOF

# Task 16: existing logical volume to resize
wipefs -a /dev/vdc
pvcreate /dev/vdc
vgcreate datavg /dev/vdc
lvcreate -y -L 200M -n datalv datavg
mkfs.xfs /dev/datavg/datalv
mkdir -p /data
echo "/dev/datavg/datalv  /data  xfs  defaults  0 0" >> /etc/fstab
systemctl daemon-reload
mount -a

# Task 21: container user, and allow the HTTP registry
useradd devops
echo "devops:flamingo" | chpasswd
mkdir -p /etc/containers/registries.conf.d
cat > /etc/containers/registries.conf.d/rhcsa.conf << 'EOF'
[[registry]]
location = "repo.rhcsa.home:5000"
insecure = true
EOF

echo "node2 ready for the mock exam"
