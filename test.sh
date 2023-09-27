#!/bin/bash

echo "================ Server Health Checkup ================"

check_running_processes() {
  echo "------ Checking Running Processes ------"

  echo "1. Processes consuming more than 10% CPU:"
  ps aux --sort=-%cpu | awk 'NR<=5 {print $0}'

  echo "2. List all running 'java' processes:"
  ps aux | grep 'java'

  echo "3. List all running 'http' processes:"
  ps aux | grep 'http'

  echo "4. List all running 'mysql' processes:"
  ps aux | grep 'mysql'
 
  echo "5. Total number of running processes:"
  ps -e | wc -l
}

check_cpu_utilization() {
  echo "------ Checking CPU Utilization ------"

  echo "1. CPU utilization of critical processes:"
  ps -eo %cpu,command | egrep '(java|http|mysql)' | awk '$1 > 10 {print $0}'

    echo "2. Average CPU load in the last minute:"
  uptime | awk '{print $10}'

  echo "3. CPU info:"
  lscpu

  echo "4. Top 5 CPU-consuming users:"
  top -b -n 1 | grep '^%Cpu' | tail -n 5

  echo "5. CPU core count:"
  nproc
}

check_memory_utilization() {
  echo "------ Checking Memory Utilization ------"

  echo "1. Freeing up cache:"
  sync && echo 3 > /proc/sys/vm/drop_caches

  # Display free memory
  echo "2. Display free memory:"
  free -h

  # Display swap usage
  echo "3. Display swap usage:"
  swapon --show

  # Display top 5 memory-consuming processes
  echo "4. Top 5 memory-consuming processes:"
  ps aux --sort=-%mem | awk 'NR<=5 {print $0}'

  # Display available memory in megabytes
  echo "5. Available memory in megabytes:"
  free -m | awk 'NR==2 {print $7}'
}

# Function to check for zombie processes
check_zombie_processes() {
  echo "------ Checking Zombie Processes ------"

  # Killing zombie processes
  echo "1. Killing zombie processes:"
  ps aux | awk '$8=="Z" {print "kill -9 " $2}' | sh

  # List all zombie processes
  echo "2. List all zombie processes:"
  ps aux | awk '$8=="Z"'

  # Count of zombie processes
  echo "3. Count of zombie processes:"
  ps aux | awk '$8=="Z"' | wc -l

  # Parent processes of zombies
  echo "4. Parent processes of zombies:"
  ps aux | awk '$8=="Z" {print $3}'

  # User owning zombie processes
  echo "5. User owning zombie processes:"
  ps aux | awk '$8=="Z" {print $1}'
}

# Function to check load average
check_load_average() {
  echo "------ Checking Load Average ------"

  # Current load average
  echo "1. Current load average:"
  uptime

  # Load average of the last 5 minutes
  echo "2. Load average of the last 5 minutes:"
  uptime | awk '{print $11}'

  # Load average of the last 15 minutes
  echo "3. Load average of the last 15 minutes:"
  uptime | awk '{print $12}'

  # Number of currently running processes
  echo "4. Number of currently running processes:"
  uptime | awk '{print $6}'

  # Number of users currently logged in
  echo "5. Number of users currently logged in:"
  uptime | awk '{print $4}'
}

# Function to check Disk/SAN/NAS utilization
check_disk_utilization() {
  echo "------ Checking Disk/SAN/NAS Utilization ------"

  # Disk I/O statistics
  echo "1. Disk I/O statistics:"
  iostat

  # Disk usage
  echo "2. Disk usage:"
  df -h

  # Inode usage
  echo "3. Inode usage:"
  df -i

  # List mounted filesystems
  echo "4. List mounted filesystems:"
  mount | column -t

  # Display disk partitions and sizes
  echo "5. Display disk partitions and sizes:"
  fdisk -l
}

# Main function to call all checks
main() {
  check_running_processes
  check_cpu_utilization
  check_memory_utilization
  check_zombie_processes
  check_load_average
  check_disk_utilization
}

# Execute main function
main

