module "my-vm" {
  source = "github.com/terraform-vsphere-module-virtual-machine"

  datacenter = "Core"
  cluster = "Management"
  networks = {"VM Network":"dhcp"}
  primary_datastore = "hl-core-ds02"
  template = "consul_sso-srv"
}