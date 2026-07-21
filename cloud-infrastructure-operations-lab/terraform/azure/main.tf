provider "azurerm" { features {} }
resource "azurerm_resource_group" "main" { name="rg-${var.project}" location=var.location }
resource "azurerm_virtual_network" "main" { name="vnet-${var.project}" address_space=["10.30.0.0/16"] location=azurerm_resource_group.main.location resource_group_name=azurerm_resource_group.main.name }
resource "azurerm_subnet" "ops" { name="snet-operations" resource_group_name=azurerm_resource_group.main.name virtual_network_name=azurerm_virtual_network.main.name address_prefixes=["10.30.10.0/24"] }
resource "azurerm_log_analytics_workspace" "main" { name="law-${var.project}" location=azurerm_resource_group.main.location resource_group_name=azurerm_resource_group.main.name sku="PerGB2018" retention_in_days=30 }
