!/#/bin/bash

# The porpouse of this script is to correct the resolv.conf file in case its empty,
# due an unknown (to me) failure that erases the file content if an USB-C NIC is connected 
# to my pc, while WI-FI is on, and also if you switch between networks.

file="/etc/resolv.conf"

for dns in $(cat $file | awk '{print $1,$2}')
do
    if [[ $dns != "nameserver 8.8.8.8" ]]
    then
        echo -e "nameserver 8.8.8.8\nnameserver 8.8.4.4\nnameserver 1.1.1.1" > $file
	break
    fi
done
