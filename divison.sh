#!/bin/bash

##Created by: Tapabrata Dutta
##Date: 31/07/25
#
#Version:V1

for i in {1..100}; do
if ([ `expr $i % 3` == 0 ] || [ `expr $i % 5` == 0 ]) && [ `expr $i % 15` != 0 ];
then	
	echo $i
fi;
done
