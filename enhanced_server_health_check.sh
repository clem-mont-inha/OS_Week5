
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

  echo "2. Display free memory:"
  free -h

  echo "3. Display swap usage:"
  swapon --show

  echo "4. Top 5 memory-consuming processes:"
  ps aux --sort=-%mem | awk 'NR<=5 {print $0}'

  echo "5. Available memory in megabytes:"
  free -m | awk 'NR==2 {print $7}'
}

check_zombie_processes() {
  echo "------ Checking Zombie Processes ------"

  echo "1. Killing zombie processes:"
  ps aux | awk '$8=="Z" {print "kill -9 " $2}' | sh

  echo "2. List all zombie processes:"
  ps aux | awk '$8=="Z"'

  echo "3. Count of zombie processes:"
  ps aux | awk '$8=="Z"' | wc -l

  echo "4. Parent processes of zombies:"
  ps aux | awk '$8=="Z" {print $3}'

  echo "5. User owning zombie processes:"
  ps aux | awk '$8=="Z" {print $1}'
}

check_load_average() {
  echo "------ Checking Load Average ------"

  echo "1. Current load average:"
  uptime

  echo "2. Load average of the last 5 minutes:"
  uptime | awk '{print $11}'

  echo "3. Load average of the last 15 minutes:"
  uptime | awk '{print $12}'

  echo "4. Number of currently running processes:"
  uptime | awk '{print $6}'

  echo "5. Number of users currently logged in:"
  uptime | awk '{print $4}'
}

check_disk_utilization() {
  echo "------ Checking Disk/SAN/NAS Utilization ------"

  echo "1. Disk I/O statistics:"
  iostat

  echo "2. Disk usage:"
  df -h

  echo "3. Inode usage:"
  df -i

  echo "4. List mounted filesystems:"
  mount | column -t

  echo "5. Display disk partitions and sizes:"
  fdisk -l
}

main() {
  check_running_processes
  check_cpu_utilization
  check_memory_utilization
  check_zombie_processes
  check_load_average
  check_disk_utilization
}

main

