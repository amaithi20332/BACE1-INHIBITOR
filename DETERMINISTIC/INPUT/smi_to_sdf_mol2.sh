#!/bin/bash
for i in {1.1707}
do
obabel -ismi Smiles_yeast_A149.smi -opdb smiles_yeast.pdb  -m --gen3d
done

