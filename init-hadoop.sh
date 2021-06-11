#!/bin/sh
sudo /etc/init.d/hadoop-hdfs-namenode init
for i in hadoop-hdfs-namenode hadoop-hdfs-datanode ;     do sudo service $i start ; done
sudo /usr/lib/hadoop/libexec/init-hdfs.sh
for i in hadoop-hdfs-namenode hadoop-hdfs-datanode ;     do sudo service $i stop ; done
