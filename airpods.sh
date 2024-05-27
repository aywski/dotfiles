#!/bin/bash
sudo systemctl start bluetooth

echo -e "connect 44:1B:88:31:FA:6D" | bluetoothctl &

