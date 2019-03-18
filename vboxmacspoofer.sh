#!/bin/bash




MACADDR="$(shuf -n 1 mac-list)"

vboxmanage controlvm debian0 acpipowerbutton --typeheadless

sleep 7

vboxmanage modifyvm debian0 --macaddress1 "${MACADDR}"

vboxmanage startvm debian0 --type headless
