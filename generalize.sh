#!/bin/bash

CONFIG="./EFI/OC/config.plist"

echo -e "Replacing platformInfo.Generic.SystemSerialNumber"
plutil -replace PlatformInfo.Generic.SystemSerialNumber -string 000000000000 $CONFIG

echo -e "Replacing platformInfo.Generic.MLB"
plutil -replace PlatformInfo.Generic.MLB -string 00000000000000000 $CONFIG

echo -e "Replacing platformInfo.SystemUUID.SystemUUID"
plutil -replace PlatformInfo.Generic.SystemUUID -string 00000000-0000-0000-0000-000000000000 $CONFIG

echo -e "Removing DeviceProperties.Add.PciRoot(0x0)/Pci(0x2,0x0).AAPL00,override-no-connect"
plutil -remove "DeviceProperties.Add.PciRoot(0x0)/Pci(0x2,0x0).AAPL00,override-no-connect" $CONFIG