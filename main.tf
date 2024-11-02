/* Uses Cloud-Init options from Proxmox 5.2 */
resource "proxmox_vm_qemu" "cloudinit-k8s-master" {
  count       = 2
  name        = "kub8-master-0${count.index + 1}"
  desc        = "Cloudinit Ubuntu"
  target_node = "pve"
  onboot      = true
  vmid        = "80${count.index + 1}"

  clone = "ubuntu-bionic-template"

  # Activate QEMU agent for this VM
  agent = 1

  # The destination resource pool for the new VM
  pool = "Kubernetes"

  os_type = "cloud-init"
  cpu     = "host"
  cores   = 1
  sockets = 1
  memory  = 1024
  numa    = false
  kvm = true
  protection = false
  vm_state = "running"
  define_connection_info = true
  hotplug = "network,disk,plug"



  #cloudinit_cdrom_storage = "local"
  scsihw = "virtio-scsi-single"


  disks {
    scsi {
      scsi0 {
        disk {
          storage = "local"
          size    = 100
        }
      }
    }
  }

  network {
    bridge   = "vmbr1"
    firewall = true
    model    = "virtio"
    #linkdown = false
    #tag       = 10
  }


  # Cloud Init Settings
  boot       = "order=net0;scsi0"
  ipconfig0  = "ip=192.168.1.8${count.index + 1}/24,gw=192.168.1.1"
  ciuser     = "dcyberguy"
  cipassword = var.cloud-init-password
  sshkeys    = var.public_ssh_key

}


