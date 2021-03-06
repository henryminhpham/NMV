#! /bin/bash

# Fixer les variables avec les chemins de vos fichiers
HDA=/tmp/nmv-tp.img 
HDB=~/myHome.img 
KERNEL=/tmp/linux-4.2.3/arch/x86/boot/bzImage 

# Si besoin ajouter une option pour le kernel
CMDLINE='root=/dev/sda1 rw vga=792 console=ttyS0 kgdboc=ttyS1'

exec qemu-system-x86_64 -hda "${HDA}" -hdb "${HDB}" -serial stdio -serial pty -net nic -net user -boot c -m 512M -kernel "${KERNEL}" -append "${CMDLINE}"
