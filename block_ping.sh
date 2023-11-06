#!/bin/sh
# Create a new firewall rule to block incoming ping (ICMP echo requests) from the internet
uci add firewall rule
uci set firewall.@rule[-1].name='Block Ping from Internet'
uci set firewall.@rule[-1].src='*'
uci set firewall.@rule[-1].proto='icmp'
uci set firewall.@rule[-1].icmp_type='echo-request'
uci set firewall.@rule[-1].target='REJECT'

# Create a new traffic rule to allow responses to ping from the internal network
uci add firewall rule
uci set firewall.@rule[-1].name='Allow Ping Response from Internal'
uci set firewall.@rule[-1].src='lan'
uci set firewall.@rule[-1].proto='icmp'
uci set firewall.@rule[-1].icmp_type='echo-reply'
uci set firewall.@rule[-1].target='ACCEPT'

# Commit the changes
uci commit firewall

# Reload the firewall rules to apply the changes
/etc/init.d/firewall reload