#!/usr/bin/env bash
# install vim
yum -y install vim
tar -zxvf source.tar.gz

# install java
tar zxvf /home/yaoqijun/source/jdk-8u131-linux-x64.tar.gz -C /home/yaoqijun/source
mv /home/yaoqijun/source/jdk1.8.0_131 /usr/local/jdk1.8
echo "" >> /etc/profile
echo "" >> /etc/profile
echo "# java env" >> /etc/profile
echo 'export JAVA_HOME=/usr/local/jdk1.8' >> /etc/profile
echo 'export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar' >> /etc/profile
echo 'export PATH=$JAVA_HOME/bin:$PATH' >> /etc/profile
source /etc/profile

# install maven
tar zxvf /home/yaoqijun/source/apache-maven-3.5.0-bin.tar.gz -C /home/yaoqijun/source
mv /home/yaoqijun/source/apache-maven-3.5.0 /usr/local/apache-maven
echo '' >> /etc/profile
echo '' >> /etc/profile
echo '# install maven' >> /etc/profile
echo 'export M2_HOME=/usr/local/apache-maven' >> /etc/profile
echo 'export PATH=$M2_HOME/bin:$PATH' >> /etc/profile
source /etc/profile

# install tomcat
tar zxvf /home/yaoqijun/source/apache-tomcat-8.5.15.tar.gz -C /home/yaoqijun/source
mv /home/yaoqijun/source/apache-tomcat-8.5.15 /usr/local/tomcat85
echo '' >> /etc/profile
echo '# install tomcat' >> /etc/profile
echo 'export CATALINA_BASE=/usr/local/tomcat85' >> /etc/profile
echo 'export PATH=$CATALINA_BASE/bin:$PATH' >> /etc/profile
source /etc/profile

# install git
yum -y install git

echo 'finish init configs'
