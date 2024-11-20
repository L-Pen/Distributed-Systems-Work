#!/bin/bash
export ZOOBINDIR=~/apache-zookeeper-3.8.4-bin/bin

if [[ -z "$ZOOBINDIR" ]]
then
	echo "Error!! ZOOBINDIR is not set" 1>&2
	exit 1
fi

. $ZOOBINDIR/zkEnv.sh

#TODO Include your ZooKeeper connection string here. Make sure there are no spaces.
# 	Replace with your server names and client ports.
export ZKSERVER=tr-open-02.cs.mcgill.ca:21830,tr-open-03.cs.mcgill.ca:21830,tr-open-04.cs.mcgill.ca:21830

java -cp $CLASSPATH:../task:.: DistProcess 
