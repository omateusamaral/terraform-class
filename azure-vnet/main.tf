terraform {
  required_version = ">= 1.3.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.103.1"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rgterraformstate"     # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "mateusamaralterraform"       # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "storagecontainerremotestate"          # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "azure-vnet/terraform.tfstate" # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}

provider "azurerm" {
  features {

  }
}