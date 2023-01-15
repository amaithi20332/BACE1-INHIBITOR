#!/bin/bash

mvalue=2778
nvalue=0
for smile in $(cat bace1.smi)
do
nvalue=$((nvalue + 1))
echo $nvalue
if [ "$nvalue" -gt "$mvalue" ]; then
/usr/bin/obabel -ismi -:"$smile" -osdf -Obace$nvalue.sdf -h --gen2d
/usr/bin/obabel -isdf bace$nvalue.sdf -omol2 -Obace$nvalue.mol2 --gen3d
fi
done
