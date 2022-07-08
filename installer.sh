#!/bin/sh
#

opkg update && opkg install ffmpeg
wait
cd /tmp
ffmpeg -i bootlogo.jpg -r 25 -b 20000 bootlogo.m1v
mv bootlogo.m1v bootlogo.mvi
wait
ffmpeg -i backdrop.jpg -r 25 -b 20000 backdrop.m1v
mv backdrop.m1v backdrop.mvi
cp /tmp/bootlogo.mvi /usr/share/bootlogo.mvi
wait
cp /tmp/backdrop.mvi /usr/share/backdrop.mvi
wait
rm -f /tmp/*.jpg
rm -f /tmp/*.mvi
echo ""
sync
echo "##############################################################"
echo "#         PICTURE CONVERTED SUCCESSFULLY             #"
echo "##############################################################"
echo "   UPLOADED BY  >>>>   EMIL_NABIL "   
sleep 4;
		echo ". >>>>         RESTARING     <<<<"
echo "**********************************************************************************"
wait
killall -9 enigma2
exit 0










           
