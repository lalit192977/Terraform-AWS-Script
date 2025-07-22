# # creating ami
# data "aws_ami" "ubuntu" {
#   most_recent = true
#   owners      = ["099720109477"]


#   filter {
#     name   = "name"
#     values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
#   }

#   filter {
#     name   = "free-tier-eligible"
#     values = ["true"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }

#   filter {
#     name   = "root-device-type"
#     values = ["ebs"]
#   }

# }



# # creating aws-ec2 instance
# resource "aws_instance" "web" {
#   ami           = data.aws_ami.ubuntu.id
#   instance_type = "${var.instance_type}"
#   vpc_security_group_ids = ["${aws_security_group.allow_tls.id}"]
#   key_name = "${aws_key_pair.tf-key.key_name}"
#   tags = {
#     Name = "terraform instance"
#   }
#   # user_data = file("${path.module}/script.sh")
#   # provisioner "file" {
#   #   source = "readme.md"
#   #   destination = "/tmp/readme.md"
#   #   connection {
#   #   type     = "ssh"
#   #   user     = "ubuntu"
#   #   private_key = file("${path.module}/id_rsa")
#   #   host     = self.public_ip
#   # }
#   # }

#   # provisioner "local-exec" {
#   #   when = destroy
#   #   command = "echo 'at destroy' "
#   # }
# }
