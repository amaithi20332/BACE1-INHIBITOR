#!/bin/bash

nvalue=0
for smile in $(cat ymdb.smi)
do
nvalue=expr $nvalue + 1
obabel -ismi -:"$smile" -osdf -Oymdb$nvalue.sdf -h --gen2d
obabel -isdf ymdb$nvalue.sdf -omol2 -Oymdb$nvalue.mol2 --gen3d
done
