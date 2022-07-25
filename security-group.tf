resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"

  ingress = [{
    cidr_blocks      = var.cidrs_remote_access
    description      = "allow_ssh"
    from_port        = 22
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 22
  }]

  tags = {
    Name = "allow_ssh"
  }
}

resource "aws_security_group" "allow_ssh_us_east_2" {
  provider    = aws.us-east-2
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"

  ingress = [{
    cidr_blocks      = var.cidrs_remote_access
    description      = "allow_ssh"
    from_port        = 22
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 22
  }]

  tags = {
    Name = "allow_ssh"
  }
}
