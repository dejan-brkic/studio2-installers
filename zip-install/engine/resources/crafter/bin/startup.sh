#!/bin/sh
export JAVA_OPTS="-XX:MaxPermSize=512m -Xms128m -Xmx1024m"
cd ..
rm -rf ./apache-tomcat/logs
mkdir ./apache-tomcat/logs
touch ./apache-tomcat/logs/catalina.out
cd  ./crafter-deployer
sh ./start-deploy-agent.sh
cd ..
sh ./apache-tomcat/bin/startup.sh
cd ./bin
tail -f ../apache-tomcat/logs/catalina.out