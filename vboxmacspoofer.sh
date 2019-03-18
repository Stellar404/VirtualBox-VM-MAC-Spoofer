#!/bin/bash

#
# -- Spoof Vbox VM MAC Address --
#

shuf -n 1 mac-list $generatedMAC

vboxmanage modifyvm VMNAME --macaddress1 $generatedMAC

vboxmanage controlvm VMNAME acpipowerbutton --type headless
# THIS will shut the server down gracefully

vboxmanage startvm VMNAME --type headless

