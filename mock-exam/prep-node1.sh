#!/bin/bash
# Mock exam: node1 prep. Run as root on node1 after setup-repo.sh.
set -e

# Hostnames
hostnamectl set-hostname node1.rhcsa.home
cat >> /etc/hosts << 'EOF'
192.168.70.5   repo.rhcsa.home repo
192.168.70.10  node1.rhcsa.home node1 servera.rhcsa.home
192.168.70.20  node2.rhcsa.home node2
EOF

# Temporary repos so this script can install packages (removed at the end)
cat > /etc/yum.repos.d/prep.repo << 'EOF'
[prep-baseos]
name=prep-baseos
baseurl=http://repo.rhcsa.home/repo/BaseOS/
gpgcheck=0
[prep-appstream]
name=prep-appstream
baseurl=http://repo.rhcsa.home/repo/AppStream/
gpgcheck=0
EOF
dnf install -y httpd words

# Task 7: user daniel with files in a few places
useradd daniel
touch /tmp/daniel_notes /var/tmp/daniel_report /opt/daniel_data
chown daniel /tmp/daniel_notes /var/tmp/daniel_report /opt/daniel_data

# Task 9: broken web server on port 84
sed -i 's/^Listen 80$/Listen 84/' /etc/httpd/conf/httpd.conf
echo "mock exam passed" > /root/page1.html
mv /root/page1.html /var/www/html/page1.html
chmod 600 /var/www/html/page1.html
systemctl enable httpd

# Remove the temporary repos
rm -f /etc/yum.repos.d/prep.repo
dnf clean all

echo "node1 ready for the mock exam"
