# 10 - Manage Containers (RHEL 9)

## Task 1: Container Image Creation
As user haruna on node2, build image `web_image` using Containerfile from http://repo.rhcsa.home/containers/Containerfile

## Task 2: Systemd Rootless Container
Deploy `haruna_web` container:
- Port mapping: 8000 → 80
- Volume: /opt/user_files → /opt/userfiles
- Run as systemd service that starts on boot
