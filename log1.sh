
#!/bin/bash
# Program:
#       User input a filename, program will check the flowing:
#       1.) exist? 2.) file/directory? 3.) file permissions
# History:
# 202101/29     Remi    First release

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
DATE=$(date +%m%d)
mkdir $DATE
cp /var/log/jenkins/jenkins.log /home/$DATE/jenkins.log
chmod 644 /home/$DATE/jenkins.log
cd /home/$DATE
tar zcvf backup$DATE.tar.gz  .
rm -rf  /home/$DATE/jenkins.log
rm -rf  /home/$(date --date='7 days ago' +%m%d)
set +x
