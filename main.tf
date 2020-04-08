provider "azurerm" {
  version = "=2.0.0"
  features {}
  subscription_id = var.subscription_id
  client_id = var.client_id
  client_secret = var.client_secret
  tenant_id = var.tenant_id
}

resource "test_resource_group" "rg" {
  name = var.resource_group_name
  location = var.location
}

resource "test_network" "myvirtualnetwork" {
  name = "myNet"
  address_space = var.vnet_address
  location = var.location
}

resource "test_subnet" "mytestsubnet" {
  name = "mySubNet"
  resource_group_name =
}
