#!/bin/bash
set -ue -o pipefail

qube="${1}"
qubefile="/run/qubes/${qube}.qube"

echo "DOMID=$(qvm-prefs ${qube} xid)" > ${qubefile}
echo "DEFAULT_USER=$(qvm-prefs ${qube} default_user)" >> ${qubefile}
echo "QUBE_LABEL=$(qvm-prefs ${qube} label)" >> ${qubefile}
echo "QUBE_ICON=$(qvm-prefs ${qube} icon)" >> ${qubefile}
