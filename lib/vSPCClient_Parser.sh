#!/bin/bash
# Created by Michael Barbine
# 7/7/2014 

cd /
cd /usr
cd /bin
/usr/bin/vSPCClient > /tmp/serialconnectionsout.csv
chmod 777 /tmp/serialconnectionsout.csv
cd /
cd /tmp
sed -i 's/:/,/g' serialconnectionsout.csv 
tr -s "\n" ":" < serialconnectionsout.csv > serialconnectionsin.csv 
chmod 777 serialconnectionsin.csv


#Optionally FTP it to another server for consumption
#Optionally FTP it to another server for consumption


#HOST='Hostname or IP'
#USER='ftp user'
#PASSWD='ftp password'
#STAGINGDIR='directory name' 

#ftp -i -n $HOST <<Arul
#user ${USER} ${PASSWD}
#cd ${STAGINGDIR} 
#binary

#put serialconnectionsin.csv

#quit
#Arul



