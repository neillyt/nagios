#!/bin/bash
unalias cp
sudo cp -R /usr/lib64/nagios/plugins/* /root/nagios/plugins/
sudo cp -R /etc/nrpe.d/* /root/nagios/nrpe.d/
sudo cp -R /etc/nagios/* /root/nagios/
cd /root/nagios
git add .
git commit -m "Auto backup: `date`"
git push
