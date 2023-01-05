#Create Resource Group windows
#test3

resource "azurerm_resource_group" "Terraform-Learn" {
  name     = "DXCMOVE"
  location = "eastus"

}

resource "azurerm_virtual_network" "Learn_Terraform_Vnet-TS" {

  name                = "vnet-test"
  address_space       = ["10.0.0.0/16"]
  location            = "eastus"
  resource_group_name = azurerm_resource_group.Terraform-Learn.name
  depends_on = [
    azurerm_resource_group.Terraform-Learn
  ]
}
resource "azurerm_virtual_network" "Learn_Terraform_Vnet-QA" {

  name                = "vnet-qa"
  address_space       = ["10.1.0.0/16"]
  location            = "eastus"
  resource_group_name = azurerm_resource_group.Terraform-Learn.name
  depends_on = [
    azurerm_resource_group.Terraform-Learn
  ]
}
resource "azurerm_virtual_network" "Learn_Terraform_Vnet-PROD" {

  name                = "vnet-prod"
  address_space       = ["10.2.0.0/16"]
  location            = "eastus"
  resource_group_name = azurerm_resource_group.Terraform-Learn.name
  depends_on = [
    azurerm_resource_group.Terraform-Learn
  ]
}
