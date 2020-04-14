resource "azurerm_resource_group" "rg" {
  name = var.resource_group_name
  location = var.location
}

resource "azurerm_virtual_network" "myvirtualnetwork" {
  name = var.vnet_name
  resource_group_name = azurerm_resource_group.rg.name
  address_space = var.vnet_address
  location = azurerm_resource_group.rg.location
}

resource "azurerm_subnet" "mysubnet" {
  name = "subnet_test"
  resource_group_name = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.myvirtualnetwork.name
  address_prefix = "10.1.0.0/24"
}

resource "azurerm_route_table" "myroutetable" {
  name = "testRouteTable"
  location = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  #Optional attributes
  route {
    name = "route1"
    address_prefix = "10.1.0.0/16"
    next_hop_type = "VnetLocal"
  }
  tags = {
    environment = "NonProd"
  }
}
