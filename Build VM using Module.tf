
module "webserver_1" {
  
  source =  "git::https://devopstest.cobank.com/CoBank/CoBank/_git/MorpheusDev"

  server_name   = "SGNDALMTST001"
  server_ip     = "172.30.117.74"
}

