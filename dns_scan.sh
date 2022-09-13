#collabed with morgan, alayna, zach, and derek
#!/bin/bash
ip_prefix=$1
port=$2
#if [ -n "$1"] && [-n "$2"]; then
	for host in $(seq 1 254);
		do
			timeout .1 bash -c "echo >/dev/tcp/$ip_prefix.$host/$port" 2> /dev/null 
			if [ $? -eq 0 ];
			then
				echo "Port $port is OPEN on host $ip_prefix.$host" > sweep.txt	
			else
				echo "port $port is CLOSED on host $ip_prefix.$host"
			fi	
	done
cat sweep.txt
#else 
#	echo "no or incorrect parameters"
#fi
