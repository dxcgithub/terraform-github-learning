#Create Resource Group windows
#test3

resource "azurerm_resource_group" "Terraform-Learn" {
  name     = "testTC"
  location = "westcentralus"

}

resource "azurerm_virtual_network" "Learn_Terraform_Vnet-TS" {

  name                = "vnet-test"
  address_space       = ["10.0.0.0/16"]
  location            = "spaincentral"
  resource_group_name = azurerm_resource_group.Terraform-Learn.name
  depends_on = [
    azurerm_resource_group.Terraform-Learn
  ]
}
