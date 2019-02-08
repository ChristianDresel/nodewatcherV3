Da es nicht möglich ist, einen Cronjob rebootsafe auf die Unifis zu legen, verwenden wir einen kleinen Trick. 
Wir lassen auf einen Server im Freifunknetz ein Script laufen das regelmäßig den Nodewatcher auf den Unifi kopiert und ausführt:

#!/bin/sh
sshpass -p 'BLA' ssh -i /tmp yyy@10.50.xxx.37 -t "/tmp/script.sh"
sshpass -p 'BLA' ssh -i /tmp yyy@10.50.xxx.37 -t "chmod +x /tmp/script.sh && /tmp/script.sh"
