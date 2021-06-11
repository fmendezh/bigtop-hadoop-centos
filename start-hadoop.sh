#!/bin/sh
rm /dev/null
mknod /dev/null c 1 3
chmod 666 /dev/null
for i in hadoop-hdfs-namenode hadoop-hdfs-datanode hadoop-yarn-resourcemanager hadoop-yarn-nodemanager;     do sudo service $i start ; done