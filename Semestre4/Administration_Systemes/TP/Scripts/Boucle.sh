#!/bin/bash
for ((i=0;i<100;i=i+1)); do
echo $i
done

for num in {0..9} ; do 
	touch fichier$num.tar.gz ;
done
