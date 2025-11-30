resource "proxmox_vm_qemu" "lab_vm" {
  vmid = 200
  name = "lab-vm-terraform"
  target_node = "kurkin"

  agent = 1
  cores = 2
  memory = 4096
  boot = "order=scsi0"

  clone = "ubuntu-2204-cloudinit"

  full_clone = true
  scsihw = "virtio-scsi-single"
  vm_state = "running"

  ipconfig0 = "ip=dhcp"
  ciuser = "artyom"
  cipassword = "12345"
  sshkeys = var.ssh_key

  disks {
    scsi {
      scsi0 {
        disk {
          storage = "local-lvm"
          size = "20G"
        }
      }
    }

    ide {
      ide2 {
        cloudinit {
          storage = "local-lvm"
        }
      }
    }
  }

  network {
    id = 0
    bridge = "vmbr0"
    model = "virtio"
  }
}