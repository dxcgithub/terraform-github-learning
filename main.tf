terraform {


  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.1"
    }

  }
}
terraform {
  /*
  cloud {
    organization = "dxcasturiasterrraform"

    workspaces {
      name = "LearnTerraform"
    }
  }
}
*/
}
terraform {
  backend "azurerm" {
    storage_account_name = "learnstg2023"
    container_name       = "learncontainer"
    key                  = "terraform.tfstate"
    access_key           = "bWNi1v+r9PEWBoLhQi2vIM077nV9rj1QzLbemEZsgg0ivEt5RoY8SERi9FL5Jde584Ta00tjmZ0u+AStjpFF/g=="
  }
}

provider "azurerm" {
  features {}

  tenant_id       = "93f33571-550f-43cf-b09f-cd331338d086"
  client_id       = "6a7f253a-e118-49c7-8b76-8ef0675cf825"
  subscription_id = "6a7f253a-e118-49c7-8b76-8ef0675cf825"

}
