# creating security-group
resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"

  dynamic "ingress" {
    for_each = var.ports
    iterator = port
    content {
      from_port = port.value
      to_port = port.value
      cidr_blocks = ["0.0.0.0/0"]
      protocol = "tcp"
    }
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}