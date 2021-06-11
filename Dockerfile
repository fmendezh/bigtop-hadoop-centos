FROM centos
RUN yum -y install sudo
RUN yum -y install java-1.8.0-openjdk-devel.x86_64
RUN yum -y install wget
RUN wget -O /etc/yum.repos.d/bigtop.repo http://www.apache.org/dist/bigtop/bigtop-1.5.0/repos/centos-8/bigtop.repo
RUN yum -y install hadoop* mahout* oozie* hbase* hive* pig* zookeeper*
RUN mkdir -p /scripts
COPY init-hadoop.sh /scripts
COPY start-hadoop.sh /scripts
WORKDIR /scripts
RUN chmod +x *.sh
RUN ./init-hadoop.sh
RUN ./start-hadoop.sh
EXPOSE 8888 
EXPOSE 50070 
EXPOSE 50075
EXPOSE 10002 
EXPOSE 8088 
EXPOSE 19888 
EXPOSE 11000
EXPOSE 60010
