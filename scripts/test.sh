#!/bin/bash
# ====================================================
#   Copyright (C)2020 All rights reserved.
#
#   Author        : fankaljead
#   Email         : fankaljead@gmail.com
#   File Name     : test.sh
#   Last Modified : 2020-03-20 08:53
#   Describe      :
#
# ====================================================


test() {
	echo "Hello World"
	return 2
}
a=10
b=20
c=0
c=`expr $a + $b`

if [ $a -eq $b ]
then
   echo "$a -eq $b : a 等于 b"
else
   echo "$a -eq $b: a 不等于 b"
fi

   echo $[$a+$b]
   echo $c
