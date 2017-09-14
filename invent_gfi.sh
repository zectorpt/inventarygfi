#!/bin/bash
#
# jose.almeida@gfi.pt | josemedeirosdealmeida@gmail.com
# Jose Almeida
#

SERVERLIST=servers.lst
CMD1='cat /etc/issue|head -1'
CMD2='dmidecode -t system|grep "Product Name:"'

for HOST in `cat $SERVERLIST`;
 do
 OS=`ssh $HOST ${CMD1}`
 PN=`ssh $HOST ${CMD2}`
echo $HOST - $OS - $PN
done

