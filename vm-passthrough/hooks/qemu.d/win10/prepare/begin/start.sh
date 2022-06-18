#!/bin/bash
set -x

source "/etc/libvirt/hooks/kvm.conf"

# Stop display manager
systemctl stop sddm.service
# rc-service xdm stop
    
# Unbind VTconsoles: might not be needed
echo 0 > /sys/class/vtconsole/vtcon0/bind
echo 0 > /sys/class/vtconsole/vtcon1/bind

# Unbind EFI Framebuffer
echo efi-framebuffer.0 > /sys/bus/platform/drivers/efi-framebuffer/unbind

sleep 3

# Unload NVIDIA kernel modules
modprobe -r nvidia_drm nvidia_modeset nvidia_uvm nvidia i2c_nvidia_gpu 

# Detach GPU devices from host
# Use your GPU and HDMI Audio PCI host device
virsh nodedev-detach $VIRSH_GPU_VIDEO
virsh nodedev-detach $VIRSH_GPU_AUDIO
virsh nodedev-detach $VIRSH_GPU_USB
virsh nodedev-detach $VIRSH_GPU_USBC

# Load vfio module
modprobe vfio
modprobe vfio_pci
modprobe vfio_iommu_type1
