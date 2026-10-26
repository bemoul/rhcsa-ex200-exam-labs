# Mock Exam Setup

## 1. Create 3 VMs

| VM | IP | Extra disks |
|----|----|-------------|
| repo | 192.168.70.5 | none (attach the RHEL ISO as CD/DVD) |
| node1 | 192.168.70.10 | none |
| node2 | 192.168.70.20 | /dev/vdb 2GB, /dev/vdc 1GB |

- RHEL 10, minimal install, 2 vCPU, 2GB RAM, 20GB disk each. Free [Red Hat Developer subscription](https://developers.redhat.com/register).
- All on one network: `192.168.70.0/24`, gateway `192.168.70.1`.
- Set the IPs during install. The repo server also needs internet access.
- Disks may show as `/dev/sdb` and `/dev/sdc` on some hypervisors. If so, change `vdc` in `prep-node2.sh` and use `sdb` in the exam.

## 2. Run the scripts as root

Copy the scripts to each VM (`scp`, or `git clone` this repo), then run them in this order:

```bash
# on repo
bash setup-repo.sh

# on node1
bash prep-node1.sh

# on node2
bash prep-node2.sh
```

Each script prints a "ready" line when it's done.

## 3. Snapshot

Snapshot node1 and node2 now. Revert to the snapshot to retake the exam.

## 4. Start

Open the [exam](./exam.md), start a 3 hour timer, and use the VM consoles.
