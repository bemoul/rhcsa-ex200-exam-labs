# Solutions - 02 Create Simple Shell Scripts

> Run as root on node1.

## Task 1: Size-Based File Search

```bash
vi /root/sized_files.sh
```
```bash
#!/bin/bash
find /usr -type f -size +30k -size -50k > /root/sized_files.txt
```
```bash
chmod +x /root/sized_files.sh
/root/sized_files.sh

# Verify
head /root/sized_files.txt
```

## Task 2: Conditional Script (career.sh)

```bash
vi /root/career.sh
```
```bash
#!/bin/bash
if [ "$1" = "me" ]; then
    echo "Yes, I'm a Systems Engineer."
elif [ "$1" = "they" ]; then
    echo "Okay, they do cloud engineering."
else
    echo "Usage: ./career.sh me|they"
fi
```
```bash
chmod +x /root/career.sh

# Verify
cd /root
./career.sh me
./career.sh they
./career.sh
./career.sh hello
```

## Task 3: Users and Groups Script

### Create users and groups
```bash
vi /root/users.sh
```
```bash
#!/bin/bash
groupadd hpc_admin
groupadd hpc_managers
groupadd sysadmin

useradd -u 2030 -G hpc_admin,hpc_managers maryam
useradd -u 2040 -G sysadmin adam
useradd -u 2050 -G hpc_admin jacob
```
```bash
chmod +x /root/users.sh
/root/users.sh

# Verify
id maryam
id adam
id jacob
```

### Set passwords
```bash
vi /root/passwords.sh
```
```bash
#!/bin/bash
echo "maryam:Password@1" | chpasswd
echo "adam:Password@1" | chpasswd
echo "jacob:Password@1" | chpasswd
```
```bash
chmod +x /root/passwords.sh
/root/passwords.sh

# Verify
su - adam        # then try: su - maryam, enter Password@1
```
