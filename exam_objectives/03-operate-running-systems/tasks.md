# 03 - Operate Running Systems

## Task 1: Reset Root Password
- Break into node2 and set a new root password to `hoppy`.

## Task 2: Tuning Profile & SELinux
- Check the current recommended tuning profile.
- Put SELinux in permissive mode on node2.
- On node1 ensure network service is enabled and starts on boot.

## Task 3: Persistent Journaling
- Configure persistent journaling on both servers to retain logs across reboots.

## Task 4: Process Scheduling
- Start a stress-ng process on node1 with niceness 19.
- Adjust the niceness value to 10.
- Terminate the stress-ng process.

## Task 5: File Permissions & ACLs
- Copy /etc/fstab to /var/tmp.
- Set owner to root.
- Remove execute permissions.
- Configure ACLs:
  - adam: read & write
  - maryam: no access
  - Others: read-only

## Task 6: Secure File Transfer
- On node1, create `node1-file.ext` and scp it to user hadoga's home on node2.
