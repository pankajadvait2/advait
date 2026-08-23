rgp = {
  rg1 = {
    name     = "Ac-prod-rg-01"
    location = "westus"
  }
  rg2 = {
    name     = "Ac-prod-rg-02"
    location = "westus"
  }
}

pnet = {
  vnet1 = {
    name                = "Ac-prod-vnet-01"
    location            = "westus"
    resource_group_name = "Ac-prod-rg-01"
    address_space       = ["10.0.0.0/16"]
  }
}

subp = {
  sub1 = {
    name                 = "Ac-prod-sub-01"
    resource_group_name  = "Ac-prod-rg-01"
    virtual_network_name = "Ac-prod-vnet-01"
    address_prefixes     = ["10.0.0.0/24"]
  }
  sub2 = {
    name                 = "Ac-prod-sub-02"
    resource_group_name  = "Ac-prod-rg-01"
    virtual_network_name = "Ac-prod-vnet-01"
    address_prefixes     = ["10.0.1.0/24"]
  }
}

nsgp = {
  nsg1 = {
    name                = "Ac-prod-nsg-01"
    location            = "westus"
    resource_group_name = "Ac-prod-rg-01"
  }
  nsg2 = {
    name                = "Ac-prod-nsg-02"
    location            = "westus"
    resource_group_name = "Ac-prod-rg-01"
  }
}

snap = {
  snap1 = {
    nsg_name             = "Ac-prod-nsg-01"
    subnet_name          = "Ac-prod-sub-01"
    resource_group_name  = "Ac-prod-rg-01"
    virtual_network_name = "Ac-prod-vnet-01"
  }
  snap2 = {
    nsg_name             = "Ac-prod-nsg-02"
    subnet_name          = "Ac-prod-sub-02"
    resource_group_name  = "Ac-prod-rg-01"
    virtual_network_name = "Ac-prod-vnet-01"
  }
}
