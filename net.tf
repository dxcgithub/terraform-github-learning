#test
resource "azurerm_virtual_network" "Learn_Terraform_Vnet-qa" {

  name                = "vnet-qa"
  address_space       = ["10.1.0.0/16"]
  location            = "eastus"
  resource_group_name = azurerm_resource_group.Terraform-Learn.name
  depends_on = [
    azurerm_resource_group.Terraform-Learn
  ]
}