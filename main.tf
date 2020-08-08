module "my-vm" {
  source = "github.com/grantorchard/terraform-vsphere-module-virtual-machine"

  datacenter = "Core"
  cluster = "Management"
  networks = {"VM Network":"dhcp"}
  primary_datastore = "hl-core-ds02"
  template = "consul_sso-srv"
}


resource vsphere_virtual_disk "this" {
  size       = 2
  vmdk_path  = "/tfc-agent/disk0.vmdk"
  create_directories = true
  datacenter = "Core"
  datastore  = "hl-core-ds02"
  type       = "thin"
}