#! /bin/bash

pidwait () {
	pid_to_wait="$1"	
 	
	while true; do
		kill -0 "$pid_to_wait" 2> /dev/null
		
		[[ $? -ne 0 ]] && break
		
		# Sleep 1 sec before next run
		sleep 1
	done
}
