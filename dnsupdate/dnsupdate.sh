#! /bin/bash
LOGFILE=/home/myname/dnsupdate.log
MYIP=$(curl -s -S http://httpbin.org/ip | grep origin | awk '{print $2}' | cut -d\" -f2)
date +"%Y/%m%d %T" >> ${LOGFILE}
echo ${MYIP} >> ${LOGFILE}
curl -d MID=mydns_id -d PWD=mydns_password -d IPV4ADDR=${MYIP} -s -S http://www.mydns.jp/directip.html >> ${LOGFILE}
unset LOGFILE

