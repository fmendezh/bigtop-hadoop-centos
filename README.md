# To build this image use
docker build . -t fmendezh/centos_hadoop_bigtop

# To run a caontiner using the built image

docker run -d --memory=8GB --cpus=2 --privileged=true -t -i -p 8888:8888 -p 7180:7180 -p 50070:50070 -p 50075:50075 -p 10002:10002 -p 8088:8088 -p 19888:19888 -p 11000:11000 -p 60010:60010 fmendezh/centos_hadoop_bigtop
