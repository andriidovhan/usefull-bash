#!/bin/bash
#set -x
waiter() {
	if [ $# -ge 2 ]; then
		local msg="$3"
  	test -z "${msg}" && msg="Unknown info"
		
		count=0
		while [ "$1" -le $2 ];
		do
			echo "WAITER Info: $msg"
 			if [ "$count" -eq 5 ]; then
				echo "WAITER Warning: counter is exceeded, waiter will be broken"
 				break
			fi
		sleep 1
		(( count++ ))
		done
	else
		echo "WAITER Error: no enough argument supplied"
	fi
}

waiter `adb -s 00000234 shell hostname 2>/dev/null; echo $?` "0" "back online after fastboot.sh"

waiter "`hostname`" "0" 
waiter "`adb -s 00000234 shell hostname 2>/dev/null; echo $?`"

