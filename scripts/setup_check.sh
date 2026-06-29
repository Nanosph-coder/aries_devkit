#!/usr/bin/env bash

echo "Setup Initiated"
echo 'Hostname:' $(hostname)
echo 'Current User:' $USER
echo 'OS Version:' $(uname -r)
echo 'Date:' $(date)

for lib in git python3 pip3 ros2; do
	if apt-cache search "$lib" | grep -q . ; then 
		echo "[OK] ${lib}"
	else
		echo "[MISSING] ${lib}"
	fi
done

FREE=$(df --output=avail / | tail -1)

if [ "$FREE" -lt $((5 * 1024 * 1024)) ]; then
	echo "Disk Status: [LOW DISK]"
else
	echo "Disk Status: [NORMAL]"
fi

echo "Setup Completed"
