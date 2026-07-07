# 02 - Create Simple Shell Scripts

## Task 1: Size-Based File Search
Create a shell script that:
1. Finds files in /usr sized >30KB but <50KB
2. Outputs results to /root/sized_files.txt

## Task 2: Conditional Script (career.sh)
Create /root/career.sh that:
1. Outputs "Yes, I’m a Systems Engineer." when run with `./career.sh me`
2. Outputs "Okay, they do cloud engineering." when run with `./career.sh they`
3. Outputs "Usage: ./career.sh me|they" for invalid/empty arguments

## Task 3: Users and Groups Script
Write shell scripts on node1 that:
- Create users and groups:
  - maryam:2030:hpc_admin,hpc_managers
  - adam:2040:sysadmin
  - jacob:2050:hpc_admin
- Set passwords for maryam, adam and jacob to `Password@1`
