#!/bin/bash

<<usage
Create function for system information
-RAM used
-CPU used
-Storage used
-top processes
usage

check_memory() {
	free -h | awk 'NR==2 {print $7}'
}

check_storage() {
	free -h | awk 'NR==2 {print $4}'
}

check_most_memory_consuming_process() {
	ps -aux --sort=-%mem | awk 'NR==2 {print $1,$2,$4}'
}

show_details(){
	echo "======system details========"
	echo "Available memory"
	check_memory
	echo "available storage"
	check_storage
	echo "most memory intensive processed: "
	check_most_memory_consuming_process
}

show_details
