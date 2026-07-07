# Solutions - 01 Essential Tools

## 1.1 Find "Listen" string
grep "Listen" /etc/httpd/conf/httpd.conf > /root/web.txt

## 1.2 Create compressed archive
mkdir -p /vaults
tar -czf /vaults/etc_vault.tar.gz /etc
