# 09 - Manage Security

## Key-based Authentication
- Generate SSH key on node1
- Setup key-based auth for root
- Enable SSH root login and test

## HTTPD + SELinux
- The web server on node1 (192.168.70.10) listens on port 85. Make it reachable on that port.
- Fix SELinux context for /var/www/html if needed
- Test with `curl http://192.168.70.10:85`
