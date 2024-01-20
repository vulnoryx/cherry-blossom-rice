#!/bin/bash

# Check if Wi-Fi interface is up
if iwconfig wlan0 &>/dev/null; then
    if [ "$(iwconfig wlan0 | grep -o 'off/any')" == "" ]; then
        # Get SSID and signal level
        ssid=$(iwconfig wlan0 | grep -o 'ESSID:"[^"]*' | cut -d'"' -f2)
        signal=$(iwconfig wlan0 | grep 'Signal level=' | awk '{print $4}' | sed 's/Signal level=//')

        # Display the Wi-Fi information
        # echo "  $ssid $signal dBm"
        echo "%{F#049e74} "
    else
        echo "%{F#049e74} "
    fi
else
    # Display no Wi-Fi connection
    # echo "  Not connected"
    echo "%{F#049e74} "
fi