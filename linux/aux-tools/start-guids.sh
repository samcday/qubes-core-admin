#!/bin/bash
set -uex -o pipefail

for qube in $(qvm-ls --raw-list --running | grep -v ^dom0$); do
	systemctl start qubes-guid@${qube}.service
done
