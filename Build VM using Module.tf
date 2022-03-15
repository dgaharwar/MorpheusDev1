
module "webserver_1" {
  
  source =  "git::https://github.com/dgaharwar/WebServer2.git"

  server_name   = "DGGITSERVER"
  server_ip     = "10.32.20.118"
}

