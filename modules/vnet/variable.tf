  variable "vnet_details" {
   type = map(object({
    vnet_name = string
    address_space = string
    rg_location = string
    rg_name = string
    }))
    
  }