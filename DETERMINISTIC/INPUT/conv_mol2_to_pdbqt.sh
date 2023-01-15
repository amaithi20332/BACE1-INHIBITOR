#!/bin/bash
ls -1 *mol2  |sed 's/\.mol2//g' >files_lists

for i in $(cat files_lists)
do
file=$i.mol2
/storage/priya/mgltools/bin/pythonsh /storage/priya/mgltools/MGLToolsPckgs/AutoDockTools/Utilities24/prepare_ligand4.py -l $file
#echo "$file"
done

