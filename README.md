# Explanation

## `check_running_processes()`

**Processes consuming more than 10% CPU:** Lists the top 5 CPU-consuming processes.

**List all running 'java' processes:** Lists all processes with 'java' in their name.

**List all running 'http' processes:** Lists all processes with 'http' in their name.

**List all running 'mysql' processes:** Lists all processes with 'mysql' in their name.

**Total number of running processes:** Counts and displays the total number of running processes.

## `check_cpu_utilization()`

**CPU utilization of critical processes:** Lists processes (java, http, mysql) with CPU utilization greater than 10%.

**Average CPU load in the last minute:** Displays the average CPU load in the last minute.

**CPU info:** Provides information about the server's CPU.

**Top 5 CPU-consuming users:** Lists the top 5 CPU-consuming users.

**CPU core count:** Displays the number of CPU cores on the server.

## `check_memory_utilization()`

**Freeing up cache:** Clears file system cache.

**Display free memory:** Shows the amount of free memory.

**Display swap usage:** Displays information about swap space usage.

**Top 5 memory-consuming processes:** Lists the top 5 memory-consuming processes.

**Available memory in megabytes:** Displays the available memory in megabytes.

## `check_zombie_processes()`

**Killing zombie processes:** Attempts to kill zombie processes.

**List all zombie processes:** Lists all zombie processes.

**Count of zombie processes:** Counts the number of zombie processes.

**Parent processes of zombies:** Lists the parent processes of zombie processes.

**User owning zombie processes:** Lists the users owning zombie processes.

## `check_load_average()`

**Current load average:** Displays the current system load average.

**Load average of the last 5 minutes:** Displays the load average over the last 5 minutes.

**Load average of the last 15 minutes:** Displays the load average over the last 15 minutes.

**Number of currently running processes:** Displays the number of currently running processes.

**Number of users currently logged in:** Displays the number of users currently logged into the server.

## `check_disk_utilization()`

**Disk I/O statistics:** Displays disk I/O statistics.

**Disk usage:** Displays disk space usage.

**Inode usage:** Displays inode (file system structure) usage.

**List mounted filesystems:** Lists all mounted filesystems.

**Display disk partitions and sizes:** Displays information about disk partitions and their sizes.


# OUTPUT
================ Server Health Checkup ================
------ Checking Running Processes ------
1. Processes consuming more than 10% CPU:
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
clement     1599 17.1 12.7 6055752 511888 ?      Ssl  13:37  10:55 /usr/bin/gnome-shell
clement     4005  3.1 10.2 3340460 410032 ?      Sl   13:55   1:26 /snap/firefox/3167/usr/lib/firefox/firefox
clement     7948  1.7  4.8 1187629880 194092 ?   Sl   14:27   0:13 /usr/share/code/code --type=renderer --crashpad-handler-pid=7895 --enable-crash-reporter=51231816-31bd-48b3-b086-daa816cc4ecd,no_channel --user-data-dir=/home/clement/.config/Code --standard-schemes=vscode-webview,vscode-file --enable-sandbox --secure-schemes=vscode-webview,vscode-file --bypasscsp-schemes --cors-schemes=vscode-webview,vscode-file --fetch-schemes=vscode-webview,vscode-file --service-worker-schemes=vscode-webview --streaming-schemes --app-path=/usr/share/code/resources/app --enable-sandbox --enable-blink-features=HighlightAPI --first-renderer-process --lang=en-US --num-raster-threads=3 --enable-main-frame-before-activation --renderer-client-id=4 --time-ticks-at-unix-epoch=-1695789392278112 --launch-time-ticks=3066809314 --shared-files=v8_context_snapshot_data:100 --field-trial-handle=0,i,7825270124416252952,6143469124494129752,262144 --disable-features=CalculateNativeWinOcclusion,SpareRendererForSitePerProcess --vscode-window-config=vscode:eda5899a-13ff-4716-a0d2-e390d8d61250
root         790  0.7  0.5 1614608 23812 ?       Ssl  13:36   0:28 /usr/lib/snapd/snapd
2. List all running 'java' processes:
root        8456  0.0  0.0   5892  1996 pts/1    S+   14:40   0:00 grep java
3. List all running 'http' processes:
root        8458  0.0  0.0   5892  1972 pts/1    R+   14:40   0:00 grep http
4. List all running 'mysql' processes:
root        8460  0.0  0.0   5892  2000 pts/1    S+   14:40   0:00 grep mysql
5. Total number of running processes:
252
------ Checking CPU Utilization ------
1. CPU utilization of critical processes:
2. Average CPU load in the last minute:
0,09
3. CPU info:
Architecture:           aarch64
  CPU op-mode(s):       64-bit
  Byte Order:           Little Endian
CPU(s):                 6
  On-line CPU(s) list:  0-5
Vendor ID:              0x00
  Model:                0
  Thread(s) per core:   1
  Core(s) per socket:   6
  Socket(s):            1
  Stepping:             0x0
  BogoMIPS:             48.00
  Flags:                fp asimd evtstrm aes pmull sha1 sha2 crc32 atomics fphp asimdhp cpuid asimdrdm jscvt fcma lrcpc dcpop sha3 asimddp sha512 asimdfhm dit
                         uscat ilrcpc flagm sb paca pacg dcpodp flagm2 frint
NUMA:                   
  NUMA node(s):         1
  NUMA node0 CPU(s):    0-5
Vulnerabilities:        
  Gather data sampling: Not affected
  Itlb multihit:        Not affected
  L1tf:                 Not affected
  Mds:                  Not affected
  Meltdown:             Not affected
  Mmio stale data:      Not affected
  Retbleed:             Not affected
  Spec store bypass:    Vulnerable
  Spectre v1:           Mitigation; __user pointer sanitization
  Spectre v2:           Not affected
  Srbds:                Not affected
  Tsx async abort:      Not affected
4. Top 5 CPU-consuming users:
%Cpu(s):  4,2 us,  1,0 sy,  0,0 ni, 94,8 id,  0,0 wa,  0,0 hi,  0,0 si,  0,0 st
5. CPU core count:
6
------ Checking Memory Utilization ------
1. Freeing up cache:
2. Display free memory:
               total        used        free      shared  buff/cache   available
Mem:           3,8Gi       1,6Gi       1,6Gi        99Mi       657Mi       2,0Gi
Swap:          2,9Gi        37Mi       2,8Gi
3. Display swap usage:
NAME      TYPE SIZE  USED PRIO
/swap.img file 2,9G 37,5M   -2
4. Top 5 memory-consuming processes:
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
clement     1599 17.1 12.7 6049992 512044 ?      Ssl  13:37  10:55 /usr/bin/gnome-shell
clement     4005  3.1 10.2 3340460 410032 ?      Sl   13:55   1:26 /snap/firefox/3167/usr/lib/firefox/firefox
clement     7948  1.6  4.8 1187629880 194092 ?   Sl   14:27   0:13 /usr/share/code/code --type=renderer --crashpad-handler-pid=7895 --enable-crash-reporter=51231816-31bd-48b3-b086-daa816cc4ecd,no_channel --user-data-dir=/home/clement/.config/Code --standard-schemes=vscode-webview,vscode-file --enable-sandbox --secure-schemes=vscode-webview,vscode-file --bypasscsp-schemes --cors-schemes=vscode-webview,vscode-file --fetch-schemes=vscode-webview,vscode-file --service-worker-schemes=vscode-webview --streaming-schemes --app-path=/usr/share/code/resources/app --enable-sandbox --enable-blink-features=HighlightAPI --first-renderer-process --lang=en-US --num-raster-threads=3 --enable-main-frame-before-activation --renderer-client-id=4 --time-ticks-at-unix-epoch=-1695789392278112 --launch-time-ticks=3066809314 --shared-files=v8_context_snapshot_data:100 --field-trial-handle=0,i,7825270124416252952,6143469124494129752,262144 --disable-features=CalculateNativeWinOcclusion,SpareRendererForSitePerProcess --vscode-window-config=vscode:eda5899a-13ff-4716-a0d2-e390d8d61250
clement     7867  0.4  4.0 1177598840 160588 ?   SLsl 14:27   0:03 /usr/share/code/code .
5. Available memory in megabytes:
2032
------ Checking Zombie Processes ------
1. Killing zombie processes:
2. List all zombie processes:
3. Count of zombie processes:
0
4. Parent processes of zombies:
5. User owning zombie processes:
------ Checking Load Average ------
1. Current load average:
 14:40:53 up  1:04,  2 users,  load average: 0,04, 0,04, 0,09
2. Load average of the last 5 minutes:

3. Load average of the last 15 minutes:

4. Number of currently running processes:
load
5. Number of users currently logged in:
2
------ Checking Disk/SAN/NAS Utilization ------
1. Disk I/O statistics:
./enhanced_server_health_check.sh: 103: iostat: not found
2. Disk usage:
Filesystem                         Size  Used Avail Use% Mounted on
tmpfs                              392M  1,8M  390M   1% /run
/dev/mapper/ubuntu--vg-ubuntu--lv   15G   11G  2,5G  82% /
tmpfs                              2,0G   16M  1,9G   1% /dev/shm
tmpfs                              5,0M  4,0K  5,0M   1% /run/lock
/dev/vda2                          2,0G  255M  1,6G  14% /boot
/dev/vda1                          1,1G  6,4M  1,1G   1% /boot/efi
tmpfs                              392M  112K  392M   1% /run/user/1000
3. Inode usage:
Filesystem                        Inodes  IUsed  IFree IUse% Mounted on
tmpfs                             500625   1038 499587    1% /run
/dev/mapper/ubuntu--vg-ubuntu--lv 950272 226218 724054   24% /
tmpfs                             500625     69 500556    1% /dev/shm
tmpfs                             500625      5 500620    1% /run/lock
/dev/vda2                         131072    260 130812    1% /boot
/dev/vda1                              0      0      0     - /boot/efi
tmpfs                             100125    150  99975    1% /run/user/1000
4. List mounted filesystems:
sysfs                                             on  /sys                                       type  sysfs            (rw,nosuid,nodev,noexec,relatime)
proc                                              on  /proc                                      type  proc             (rw,nosuid,nodev,noexec,relatime)
udev                                              on  /dev                                       type  devtmpfs         (rw,nosuid,relatime,size=1927684k,nr_inodes=481921,mode=755,inode64)
devpts                                            on  /dev/pts                                   type  devpts           (rw,nosuid,noexec,relatime,gid=5,mode=620,ptmxmode=000)
tmpfs                                             on  /run                                       type  tmpfs            (rw,nosuid,nodev,noexec,relatime,size=400504k,mode=755,inode64)
efivarfs                                          on  /sys/firmware/efi/efivars                  type  efivarfs         (rw,nosuid,nodev,noexec,relatime)
/dev/mapper/ubuntu--vg-ubuntu--lv                 on  /                                          type  ext4             (rw,relatime)
securityfs                                        on  /sys/kernel/security                       type  securityfs       (rw,nosuid,nodev,noexec,relatime)
tmpfs                                             on  /dev/shm                                   type  tmpfs            (rw,nosuid,nodev,inode64)
tmpfs                                             on  /run/lock                                  type  tmpfs            (rw,nosuid,nodev,noexec,relatime,size=5120k,inode64)
cgroup2                                           on  /sys/fs/cgroup                             type  cgroup2          (rw,nosuid,nodev,noexec,relatime,nsdelegate,memory_recursiveprot)
pstore                                            on  /sys/fs/pstore                             type  pstore           (rw,nosuid,nodev,noexec,relatime)
bpf                                               on  /sys/fs/bpf                                type  bpf              (rw,nosuid,nodev,noexec,relatime,mode=700)
systemd-1                                         on  /proc/sys/fs/binfmt_misc                   type  autofs           (rw,relatime,fd=29,pgrp=1,timeout=0,minproto=5,maxproto=5,direct,pipe_ino=21973)
hugetlbfs                                         on  /dev/hugepages                             type  hugetlbfs        (rw,relatime,pagesize=2M)
mqueue                                            on  /dev/mqueue                                type  mqueue           (rw,nosuid,nodev,noexec,relatime)
debugfs                                           on  /sys/kernel/debug                          type  debugfs          (rw,nosuid,nodev,noexec,relatime)
tracefs                                           on  /sys/kernel/tracing                        type  tracefs          (rw,nosuid,nodev,noexec,relatime)
fusectl                                           on  /sys/fs/fuse/connections                   type  fusectl          (rw,nosuid,nodev,noexec,relatime)
configfs                                          on  /sys/kernel/config                         type  configfs         (rw,nosuid,nodev,noexec,relatime)
none                                              on  /run/credentials/systemd-sysusers.service  type  ramfs            (ro,nosuid,nodev,noexec,relatime,mode=700)
/var/lib/snapd/snaps/bare_5.snap                  on  /snap/bare/5                               type  squashfs         (ro,nodev,relatime,errors=continue,x-gdu.hide)
/var/lib/snapd/snaps/core20_1977.snap             on  /snap/core20/1977                          type  squashfs         (ro,nodev,relatime,errors=continue,x-gdu.hide)
/var/lib/snapd/snaps/core20_2019.snap             on  /snap/core20/2019                          type  squashfs         (ro,nodev,relatime,errors=continue,x-gdu.hide)
/var/lib/snapd/snaps/core22_867.snap              on  /snap/core22/867                           type  squashfs         (ro,nodev,relatime,errors=continue,x-gdu.hide)
/var/lib/snapd/snaps/firefox_3134.snap            on  /snap/firefox/3134                         type  squashfs         (ro,nodev,relatime,errors=continue,x-gdu.hide)
/var/lib/snapd/snaps/gnome-42-2204_127.snap       on  /snap/gnome-42-2204/127                    type  squashfs         (ro,nodev,relatime,errors=continue,x-gdu.hide)
/var/lib/snapd/snaps/gtk-common-themes_1535.snap  on  /snap/gtk-common-themes/1535               type  squashfs         (ro,nodev,relatime,errors=continue,x-gdu.hide)
/var/lib/snapd/snaps/lxd_24326.snap               on  /snap/lxd/24326                            type  squashfs         (ro,nodev,relatime,errors=continue,x-gdu.hide)
/var/lib/snapd/snaps/snapd_19459.snap             on  /snap/snapd/19459                          type  squashfs         (ro,nodev,relatime,errors=continue,x-gdu.hide)
/var/lib/snapd/snaps/snapd_20102.snap             on  /snap/snapd/20102                          type  squashfs         (ro,nodev,relatime,errors=continue,x-gdu.hide)
/dev/mapper/ubuntu--vg-ubuntu--lv                 on  /var/snap/firefox/common/host-hunspell     type  ext4             (ro,noexec,noatime)
/dev/vda2                                         on  /boot                                      type  ext4             (rw,relatime)
/dev/vda1                                         on  /boot/efi                                  type  vfat             (rw,relatime,fmask=0022,dmask=0022,codepage=437,iocharset=iso8859-1,shortname=mixed,errors=remount-ro)
binfmt_misc                                       on  /proc/sys/fs/binfmt_misc                   type  binfmt_misc      (rw,nosuid,nodev,noexec,relatime)
tmpfs                                             on  /run/snapd/ns                              type  tmpfs            (rw,nosuid,nodev,noexec,relatime,size=400504k,mode=755,inode64)
nsfs                                              on  /run/snapd/ns/lxd.mnt                      type  nsfs             (rw)
tmpfs                                             on  /run/user/1000                             type  tmpfs            (rw,nosuid,nodev,relatime,size=400500k,nr_inodes=100125,mode=700,uid=1000,gid=1000,inode64)
gvfsd-fuse                                        on  /run/user/1000/gvfs                        type  fuse.gvfsd-fuse  (rw,nosuid,nodev,relatime,user_id=1000,group_id=1000)
portal                                            on  /run/user/1000/doc                         type  fuse.portal      (rw,nosuid,nodev,relatime,user_id=1000,group_id=1000)
/var/lib/snapd/snaps/gnome-42-2204_133.snap       on  /snap/gnome-42-2204/133                    type  squashfs         (ro,nodev,relatime,errors=continue,x-gdu.hide)
/var/lib/snapd/snaps/firefox_3167.snap            on  /snap/firefox/3167                         type  squashfs         (ro,nodev,relatime,errors=continue,x-gdu.hide)
nsfs                                              on  /run/snapd/ns/firefox.mnt                  type  nsfs             (rw)
5. Display disk partitions and sizes:
Disk /dev/loop0: 4 KiB, 4096 bytes, 8 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/loop1: 59,25 MiB, 62124032 bytes, 121336 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/loop2: 59,26 MiB, 62140416 bytes, 121368 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/loop3: 68,53 MiB, 71860224 bytes, 140352 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/loop4: 224,57 MiB, 235483136 bytes, 459928 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/loop5: 464,72 MiB, 487297024 bytes, 951752 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/loop6: 91,69 MiB, 96141312 bytes, 187776 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/loop7: 109,61 MiB, 114929664 bytes, 224472 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/vda: 32 GiB, 34359738368 bytes, 67108864 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: gpt
Disk identifier: 1AD3BEF5-DE2E-48A6-8298-5DF6F01F73C3

Device       Start      End  Sectors  Size Type
/dev/vda1     2048  2203647  2201600    1G EFI System
/dev/vda2  2203648  6397951  4194304    2G Linux filesystem
/dev/vda3  6397952 67106815 60708864 28,9G Linux filesystem


Disk /dev/mapper/ubuntu--vg-ubuntu--lv: 14,47 GiB, 15539896320 bytes, 30351360 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/loop8: 46,41 MiB, 48668672 bytes, 95056 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/loop9: 35,51 MiB, 37236736 bytes, 72728 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/loop10: 465,36 MiB, 487960576 bytes, 953048 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/loop11: 227,08 MiB, 238112768 bytes, 465064 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
