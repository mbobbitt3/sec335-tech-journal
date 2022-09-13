#collabed with morgan, alayna, zach, and derek
#!/bin/bash
hostfile=$1
portfile=$2
#if [ -n "$1"] && [-n "$2"]; then
	for host in $(cat $hostfile); do 
		for port in $(cat $portfile); do
			if timeout .1 bash -c "" 2> /dev/null && echo "$host is up on port $port" > sweep.txt; then 
				echo "$host, $port"
			else
				echo "error encountered"
			fi
		done
	done
#else 
#	echo "no or incorrect parameters"
#fi
