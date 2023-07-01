#!/bin/bash
# Wireless USB Big Sur Adapter (SIP Enable)
# By chris1111 

PARENTDIR=$(dirname "$0")
cd "$PARENTDIR"

spctl -a -vv -t install ./drivers/RtWlanU.kext
Sleep 1
spctl -a -vv -t install ./drivers/RtWlanU1827.kext
Sleep 1
spctl kext-consent status

