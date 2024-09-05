# Specify the Azure provider configuration.
provider "azurerm" {
  # Turn on any available provider features.
  features {}
}

# Define a "devRG" resource group in the "East US" region.
resource "azurerm_resource_group" "devRG" {
  name = "devResourcegroupbiju"
  location = "East US"
}

# Define an Azure Data Factory named "azuredf" within the "devRG" resource group.
resource "azurerm_data_factory" "azuredf" {
  name = "devDFbiju"
  location = azurerm_resource_group.devRG.location
  resource_group_name = azurerm_resource_group.devRG.name
}

# Define the "sourcestorage" storage account within the "devRG" resource group.
resource "azurerm_storage_account" "sourcestorage" {
  name = "sourcecodedfbiju"
  location = azurerm_resource_group.devRG.location
  resource_group_name = azurerm_resource_group.devRG.name
  account_replication_type = "GRS"
  account_tier = "Standard"
}

# Define the "destinationstorage" storage account within the "devRG" resource group.
resource "azurerm_storage_account" "destinationstorage" {
  name = "destinationcodedfbiju"
  location = azurerm_resource_group.devRG.location
  resource_group_name = azurerm_resource_group.devRG.name
  account_replication_type = "GRS"
  account_tier = "Standard"
}

# Define the "containersource" storage container within the "sourcestorage" storage account.
resource "azurerm_storage_container" "containersource" {
  name = "coursecontainerbiju"
  storage_account_name  = azurerm_storage_account.sourcestorage.name
}

# Define the "containerdestination" storage container within the "destinationstorage" storage account.
resource "azurerm_storage_container" "containerdestination" {
  name = "destinationcontainerbiju"
  storage_account_name = azurerm_storage_account.destinationstorage.name
}