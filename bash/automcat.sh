#!/bin/bash

apiedc=`curl -s -u admin:<password> http://172.16.10.102:8082/stats | awk '/DOWN */ {print $4}' | sed -n '5p' | cut -c22-30`
apiandroid=`curl -s -u admin:<password> http://172.16.10.102:8082/stats | awk '/DOWN */ {print $4}' | sed -n '5p' | cut -c22-34`
apichangestatus=`curl -s -u admin:<password> http://172.16.10.102:8082/stats | awk '/DOWN */ {print $4}' | sed -n '5p' | cut -c22-39`
#get4=`curl -u admin:<password> http://172.16.10.102:8082/stats | awk '/DOWN */ {print $7}' | sed -n '5p' | cut -c21-26`
#get5=`curl -u admin:<password> http://172.16.10.102:8082/stats | awk '/DOWN */ {print $8}' | sed -n '5p' | cut -c21-26`
#get6=`curl -u admin:<password> http://172.16.10.102:8082/stats | awk '/DOWN */ {print $9}' | sed -n '5p' | cut -c21-26`


if [ "$apiedc" == "API-EDC_1" ]
then
/opt/tomcat7_3/bin/catalina.sh stop
sleep 5
echo "`date "+%m/%d/%Y %H:%M:%S"` : Service API-EDC 1 is stopped" >> /var/log/automcat.log
/opt/tomcat7_3/bin/catalina.sh stop
sleep 5
/opt/tomcat7_3/bin/catalina.sh start
echo "`date "+%m/%d/%Y %H:%M:%S"` : Service API-EDC 1 is started" >> /var/log/automcat.log
fi

if [ "$apiedc" == "API-EDC_2" ]
then
/opt/tomcat7_3_2/bin/catalina.sh stop
sleep 5
echo "`date "+%m/%d/%Y %H:%M:%S"` : Service API-EDC 2 is stopped" >> /var/log/automcat.log
/opt/tomcat7_3_2/bin/catalina.sh stop
sleep 5
/opt/tomcat7_3_2/bin/catalina.sh start
echo "`date "+%m/%d/%Y %H:%M:%S"` : Service API-EDC 2 is started" >> /var/log/automcat.log 
fi

if [ "$apiedc" == "API-EDC_3" ]
then
/opt/tomcat7_3_3/bin/catalina.sh stop
sleep 5
/opt/tomcat7_3_3/bin/catalina.sh stop
sleep 5
/opt/tomcat7_3_3/bin/catalina.sh start
echo "`date "+%m/%d/%Y %H:%M:%S"` : Service API-EDC 3 is up" >> /var/log/automcat.log 
fi

if [ "$apiedc" == "API-EDC_4" ]
then
/opt/tomcat7_3_4/bin/catalina.sh stop
sleep 5
/opt/tomcat7_3_4/bin/catalina.sh stop
sleep 5
/opt/tomcat7_3_4/bin/catalina.sh start
echo "`date "+%m/%d/%Y %H:%M:%S"` : Service API-EDC 4 is up" >> /var/log/automcat.log
fi

#if [ "$apiedc" == "API-EDC_5" ]
#then
#/opt/tomcat7_3_5/bin/catalina.sh stop
#/opt/tomcat7_3_5/bin/catalina.sh stop
#sleep 5
#/opt/tomcat7_3_5/bin/catalina.sh start
#echo "`date "+%m/%d/%Y %H:%M:%S"` : Service API-EDC 5 is up" >> /var/log/automcat.log
#fi

#if [ "$apiedc" == "API-EDC_6" ]
#then
#/opt/tomcat7_3_6/bin/catalina.sh stop
#/opt/tomcat7_3_6/bin/catalina.sh stop
##sleep 5
#/opt/tomcat7_3_6/bin/catalina.sh start
#echo "`date "+%m/%d/%Y %H:%M:%S"` : Service API-EDC 6 is up" >> /var/log/automcat.log 
#fi

if [ "$apiandroid" == "API-Android_1" ]
then
/opt/tomcat7/bin/catalina.sh stop
sleep 5
/opt/tomcat7/bin/catalina.sh stop
sleep 5
/opt/tomcat7/bin/catalina.sh start
echo "`date "+%m/%d/%Y %H:%M:%S"` : Service API Android 1 is up" >> /var/log/automcat.log
fi

if [ "$apiandroid" == "API-Android_2" ]
then
/opt/tomcat7_1_2/bin/catalina.sh stop
sleep 5
/opt/tomcat7_1_2/bin/catalina.sh stop 
/opt/tomcat7_1_2/bin/catalina.sh start
echo "`date "+%m/%d/%Y %H:%M:%S"` : Service API Android 2 is up" >> /var/log/automcat.log
fi

if [ "$apiandroid" == "API-Android_3" ]
then
/opt/tomcat7_1_3/bin/catalina.sh stop
sleep 5
/opt/tomcat7_1_3/bin/catalina.sh stop 
/opt/tomcat7_1_3/bin/catalina.sh start
echo "`date "+%m/%d/%Y %H:%M:%S"` : Service API Android 3 is up" >> /var/log/automcat.log
fi

if [ "$apiandroid" == "API-Android_4" ]
then
/opt/tomcat7_1_4/bin/catalina.sh stop
sleep 5
/opt/tomcat7_1_4/bin/catalina.sh stop
/opt/tomcat7_1_4/bin/catalina.sh start
echo "`date "+%m/%d/%Y %H:%M:%S"` : Service API Android 4 is up" >> /var/log/automcat.log
fi

if [ "$apiandroid" == "API-Android_5" ]
then
/opt/tomcat7_1_5/bin/catalina.sh stop
sleep 5
/opt/tomcat7_1_5/bin/catalina.sh stop
/opt/tomcat7_1_5/bin/catalina.sh start
echo "`date "+%m/%d/%Y %H:%M:%S"` : Service API Android 5 is up" >> /var/log/automcat.log
fi

if [ "$apiandroid" == "API-Android_6" ]
then
/opt/tomcat7_1_6/bin/catalina.sh stop
sleep 5
/opt/tomcat7_1_6/bin/catalina.sh stop
/opt/tomcat7_1_6/bin/catalina.sh start
echo "`date "+%m/%d/%Y %H:%M:%S"` : Service API Android 6 is up" >> /var/log/automcat.log
fi
