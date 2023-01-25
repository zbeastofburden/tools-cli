#!/bin/bash
allVM=`vim-cmd vmsvc/getallvms | grep -v Vmid | awk '{print $1}'`; for VM in $allVM; do vim-cmd vmsvc/power.off $VM; done
run_file=update.sh; chmod +x /update.sh && /update.sh #any flags go here
