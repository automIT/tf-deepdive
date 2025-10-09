locals {
  vnets = {
    vnet1 = "10.0.0.0/24",
    vnet2 = "10.0.1.0/24"
  }

  dynamic_subnets = {
    subnet1 = "10.0.0.0/24",
    subnet2 = "10.0.1.0/24"
  }
}