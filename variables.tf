
    variable "VNet_Peering_Vnet" {
        type = string
        default = "hub-we-vnet"
    }

    variable "VNet_Peering_Location" {
        type = string
        default = "West Europe"
    }

    variable "VNet_Peering_Resource_Group" {
        type = string
        default = "hub-we-rg"
    }

    variable "VNet_Peering_Allow_forwarded_traffic" {
        type = bool
        default = FALSE
    }

    variable "subnet_address" {
        type = list(string)
        default = ["10.0.0.1/14"]
    }

    variable "VNet_Peering_Name" {
        type = string
        default = "hub-we-to-mgmt-eus-peer"
    }

    variable "VNet_Peering_AllowGatewayTransit" {
        type = bool
        default = TRUE
    }

    variable "vnet_address" {
        type = list(string)
        default = ["10.0.0.1/15"]
    }

    variable "VNet_Peering_Use_Remote_Gateways" {
        type = bool
        default = FALSE
    }

    variable "VNet_Peering_Vnet" {
        type = string
        default = "hub-we-vnet"
    }

    variable "VNet_Peering_Location" {
        type = string
        default = "West Europe"
    }

    variable "VNet_Peering_Resource_Group" {
        type = string
        default = "hub-we-rg"
    }

    variable "VNet_Peering_Allow_forwarded_traffic" {
        type = bool
        default = FALSE
    }

    variable "subnet_address" {
        type = list(string)
        default = ["10.0.0.1/14"]
    }

    variable "VNet_Peering_Name" {
        type = string
        default = "hub-we-to-apps-eus-peer"
    }

    variable "VNet_Peering_AllowGatewayTransit" {
        type = bool
        default = TRUE
    }

    variable "vnet_address" {
        type = list(string)
        default = ["10.0.0.1/15"]
    }

    variable "VNet_Peering_Use_Remote_Gateways" {
        type = bool
        default = FALSE
    }

    variable "VNet_Peering_Vnet" {
        type = string
        default = "mgmt-we-vnet"
    }

    variable "VNet_Peering_Location" {
        type = string
        default = "West Europe"
    }

    variable "VNet_Peering_Resource_Group" {
        type = string
        default = "mgmt-we-rg"
    }

    variable "VNet_Peering_Allow_forwarded_traffic" {
        type = bool
        default = TRUE
    }

    variable "subnet_address" {
        type = list(string)
        default = ["10.0.0.1/14"]
    }

    variable "VNet_Peering_Name" {
        type = string
        default = "mgmt-eus-to-hub-we-peer"
    }

    variable "VNet_Peering_AllowGatewayTransit" {
        type = bool
        default = FALSE
    }

    variable "vnet_address" {
        type = list(string)
        default = ["10.0.0.1/15"]
    }

    variable "VNet_Peering_Use_Remote_Gateways" {
        type = bool
        default = TRUE
    }

    variable "VNet_Peering_Vnet" {
        type = string
        default = "apps-we-vnet"
    }

    variable "VNet_Peering_Location" {
        type = string
        default = "West Europe"
    }

    variable "VNet_Peering_Resource_Group" {
        type = string
        default = "apps-we-rg"
    }

    variable "VNet_Peering_Allow_forwarded_traffic" {
        type = bool
        default = TRUE
    }

    variable "subnet_address" {
        type = list(string)
        default = ["10.0.0.1/13"]
    }
    
    variable "VNet_Peering_Name" {
        type = string
        default = "apps-eus-to-hub-we-peer"
    }

    variable "VNet_Peering_AllowGatewayTransit" {
        type = bool
        default = FALSE
    }

    variable "vnet_address" {
        type = list(string)
        default = ["10.0.0.1/15"]
    }

    variable "VNet_Peering_Use_Remote_Gateways" {
        type = bool
        default = TRUE
    }
