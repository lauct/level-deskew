#!/bin/sh
# mount_smbfs //justinliu:jtliuxin@192.168.12.100/Cloud ~/mnt/Cloud;
# mount_smbfs //justinliu:jtliuxin@192.168.12.100/Public ~/mnt/Public;
# mount_smbfs //justinliu:jtliuxin@192.168.12.100/justinliu ~/mnt/justinliu;
mount_afp "afp://justinliu:jtliuxin@192.168.12.100/Cloud" ~/mnt/Cloud;
mount_afp "afp://justinliu:jtliuxin@192.168.12.100/Public" ~/mnt/Public;
mount_afp "afp://justinliu:jtliuxin@192.168.12.100/justinliu" ~/mnt/justinliu;
mount_afp "afp://justinliu:jtliuxin@192.168.12.100/Multimedia" ~/mnt/Multimedia;
exit 0
