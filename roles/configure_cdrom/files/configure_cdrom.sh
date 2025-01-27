#!/bin/bash

echo 'Arrêt de la VM avant ajout CDROM\n'
govc vm.power -off -u 'https://root:Btssio75000!@192.168.62.100' -k "M2L-WSRV02"
echo 'Ajout CD ROM\n'
govc device.cdrom.add -u 'https://root:Btssio75000!@192.168.62.100' -k -vm "M2L-WSRV02"
sleep 60
govc device.connect -u 'https://root:Btssio75000!@192.168.62.100' -k -vm "M2L-WSRV02"
echo 'Ajout de ISO windows 10\n'
govc device.cdrom.insert -vm "M2L-WSRV02" -u 'https://root:Btssio75000!@192.168.62.100' -k  '[datastore1] ISOs/Win10_20H2_French_x64.iso'
echo 'Boot de la VM\n'
govc vm.power -on -u 'https://root:Btssio75000!@192.168.62.100' -k "M2L-WSRV02"
sleep 80
echo "Fin du Script"
