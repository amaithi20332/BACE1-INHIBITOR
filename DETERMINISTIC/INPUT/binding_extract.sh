#!/bin/sh

for i in {1..7234}
do 
file=bace$i.pdbqt
count=[]
b=file.readline()[25:29]
count.append(b)
echo count
done


