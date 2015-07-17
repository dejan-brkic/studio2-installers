set JAVA_OPTS=-XX:MaxPermSize=512m -Xms128m -Xmx1024m
set JAVA_HOME=C:\Program Files\Java\jre7
set CATALINA_HOME=./apache-tomcat
cd ..

call ./apache-tomcat/bin/startup.bat run
cd ./bin