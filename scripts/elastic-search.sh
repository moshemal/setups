#!/bin/bash
esVersion=5.4.1

esName=elasticsearch-${esVersion}
esFileName=${esName}.tar.gz

lsName=logstash-${esVersion}
lsFileName=${lsName}.tar.gz

kName=kibana-${esVersion}-linux-x86_64
kFileName=${kName}.tar.gz

sudo apt-get update
sudo apt-get install openjdk-8-jdk
mkdir ELK
cd ELK


wget https://artifacts.elastic.co/downloads/elasticsearch/${esFileName}
tar -zxvf ${esFileName}
./${esName}/bin/elasticsearch-plugin install x-pack
./${esName}/bin/elasticsearch-plugin install ingest-geoip 
gnome-terminal -e ./${esName}/bin/elasticsearch 

wget https://artifacts.elastic.co/downloads/kibana/${kFileName}
tar -zxvf ${kFileName}
./${kName}/bin/kibana-plugin install x-pack
gnome-terminal -e ./${kName}/bin/kibana 

wget https://artifacts.elastic.co/downloads/logstash/${lsFileName}
tar -zxvf ${lsFileName}

https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-${esVersion}-darwin-x86_64.tar.gz
tar xzvf filebeat-${esVersion}-darwin-x86_64.tar.gz
wget https://raw.githubusercontent.com/elastic/examples/master/Machine%20Learning/Security%20analytics%20recipes/Suspicious_Login_Activity/configs/filebeat/filebeat.yml

echo open http://localhost:5601
echo initial user name: elastic
echo initial password: changeme





