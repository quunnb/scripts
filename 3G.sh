#!/bin/env sh

rfkill unblock wwan
sudo ip link set wwp0s20f0u3c3 up
nmcli radio wwan on
nmcli device up cdc-wdm0
sudo mmcli -m 0 -e
