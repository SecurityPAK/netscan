#!/bin/bash

# get ipv4 range of connected network
get_network_range() {
    local ip_range=$(ifconfig | grep "inet " | grep -v "127.0.0.1" | awk '{print $2"/24"}')
    echo "$ip_range"
}

# scan network for ipv4 addresses in range
scan_network() {
    local network_range=$(get_network_range)
    if [ -z "$network_range" ]; then
        echo "network range not defined."
        exit 1
    fi

    echo "scanning network: $network_range"
    nmap -sn "$network_range" -oG - | awk '/Up$/{print $2}'
}

# script execution
echo "locating ip addresses connected to the network..."
scan_network