provider  "aws" {
   region = var.aws_region
   version = "~> 2.70"
}

resource "aws_instance" "testinstance"{
#   count = 3
   ami = var.ami
   instance_type = var.instance_type
   key_name = var.key
   

   tags = {
#        Name = "Server-${count.index}"
         Name = "Server"
      }

}
