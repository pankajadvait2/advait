module "rg" {
  source = "../module/azurerm_rg"
  rgs    = var.rgp

}

module "vnet" {
  source     = "../module/azurerm_vnet"
  mnet       = var.pnet
  depends_on = [module.rg]
}

module "subn" {
  source     = "../module/azurerm_subnet"
  subm       = var.subp
  depends_on = [module.rg, module.vnet]
}

module "nsga" {
  source     = "../module/azurerm_nsg"
  nsgm       = var.nsgp
  depends_on = [module.rg]
}

module "sna" {
  source     = "../module/azurerm_sub_nsg_assocation"
  snam       = var.snap
  depends_on = [module.rg, module.subn, module.vnet]
}

locals {
  azure_client_id     = "12345678-1234-1234-1234-123456789abc"
  azure_client_secret = "abcdefghijklmnopqrstuvwxyz1234567890"
  azure_tenant_id     = "87654321-4321-4321-4321-0987654321ab"
}
