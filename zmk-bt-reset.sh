#!/bin/bash
# ~/bin/bt-reset-hamboarder
ADAPTER="10:F6:0A:0B:EC:3E"
DEVICE="C6:C4:9C:98:CB:6E"
bluetoothctl remove "$DEVICE" 2>/dev/null
sudo systemctl stop bluetooth
sudo rm -rf "/var/lib/bluetooth/$ADAPTER/$DEVICE"
sudo rm -rf "/var/lib/bluetooth/$ADAPTER/cache/"*
sudo hciconfig hci0 down
sudo hciconfig hci0 up
sudo systemctl start bluetooth
sleep 2
echo "Ready to pair. Put keyboard in pairing mode."
bluetoothctl scan on