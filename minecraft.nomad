job "java-app" {
   datacenters = ["dc1"]
   group "minecraft"{
   task "minecraft" {
        driver = "java"
        resources {
        cpu = 800
        memory = 900
        disk = 2000
        }
               config {
         jar_path ="/home/dawitt7/Downloads/server.jar"      
        
      }
        artifact {
                source = "https://raw.githubusercontent.com/pandom/cloud-nomad/master/minecraft/common/eula.txt"
                mode = "file"
                destination = "eula.txt"
            }
        artifact {
                source = "https://launcher.mojang.com/v1/objects/bb2b6b1aefcd70dfd1892149ac3a215f6c636b07/server.jar"
                mode = "file"
                destination = "server.jar"
            }
}
                network {
                port "access" {
                static = 25565
                    }
                }
        }
 
   }
