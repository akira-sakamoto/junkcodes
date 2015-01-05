#! /bin/bash
LOGFILE=/home/azira/dnsupdate.log
MYIP=$(curl -s -S http://httpbin.org/ip | grep origin | awk '{print $2}' | cut -d\" -f2)
date +"%Y/%m%d %T" >> ${LOGFILE}
echo ${MYIP} >> ${LOGFILE}
curl -d MID=&gt;<em>mydns_id</em> &lt; -d PWD=&gt;<em>mydns_password</em>&lt; -d IPV4ADDR=${MYIP} -s -S http://www.mydns.jp/directip.html >> ${LOGFILE}
unset LOGFILE

