terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.112.0"
    }

    azapi = {
      source = "Azure/azapi"
      version = "~>1.14.0"
    }
  }
}

provider "azurerm" {
  features {  }
  client_id = "7a95d305-ef12-46b7-93c1-a401faf8554e"
  client_secret = ""
  tenant_id = "57dc8d68-1f9a-4760-a206-ecece9b658d1"
  subscription_id = "80471256-6afc-4420-8308-83d753e3a329"
}