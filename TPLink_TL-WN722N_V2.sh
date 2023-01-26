sudo apt update && sudo apt upgrade

sudo apt install linux-headers-$(uname -r)

sudo apt install bc

sudo rmmod r8188eu.ko

git clone https://github.com/aircrack-ng/rtl8188eus

cd rtl8188eus

sudo -i

echo "blacklist r8188eu" > "/etc/modprobe.d/realtek.conf"
exit

cd rtl8188eus

make

sudo make install

sudo modprobe 8188eu

sudo ifconfig wlan0 down

sudo airmon-ng check kill

sudo iwconfig wlan0 mode monitor

sudo ifconfig wlan0 up

sudo iwconfig

sudo ifconfig wlan0 up
sudo rmmod r8188eu.ko
sudo modprobe 8188eu
sudo iwconfig wlan0 mode auto
sudo ifconfig wlan0 down
sudo iwconfig wlan0 mode monitor
sudo ifconfig wlan0 up
reboot
