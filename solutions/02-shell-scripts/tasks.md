# Solutions - 02 Shell Scripts

## Task 2 - career.sh
```bash
cat > /root/career.sh << 'SCRIPT'
#!/bin/bash
if [ "$1" = "me" ]; then
  echo "Yes, I’m a Systems Engineer."
elif [ "$1" = "they" ]; then
  echo "Okay, they do cloud engineering."
else
  echo "Usage: $0 me|they"
  exit 1
fi
SCRIPT

chmod +x /root/career.sh
