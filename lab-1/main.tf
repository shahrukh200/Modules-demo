module "rg" {
    source = "../modules/resource_group"
    rg_name = "resource_1"
    rg_location = "uk south"

}

module "storage_account" {
    source = "../modules/storage_account"
    storage_account = {


      "stgacc" = {
        name = "storage_account"
        rg_name = module.rg.rg_nameout 
        location = module.rg.rg_locationout
        account_tier = "standard"
        account_replication_type = "LRS"

            
        }
            
        }

        depends_on = [ module.rg ]
      } 
    
  
