#collabed with morgan, alayna, zach, and derek
#!/bin/bash
ip_prefix=$1
dns_server=$2
#if [ -n "$1"] && [-n "$2"]; then
	echo "dns reslolution for $ip_prefix"
	for host in $(seq 1 254); do
		nslookup $ip_prefix.$host $dns_server | grep "name"
	done
#else 
#	echo "no or incorrect parameters"
#fi
