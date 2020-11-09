provider  "aws" {
   region = var.aws_region
   version = "~> 3.0"
   access_key = "AKIAIDMKXKPCGRUUVUYA"
  secret_key = "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"
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
