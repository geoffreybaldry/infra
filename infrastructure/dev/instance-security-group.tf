resource "aws_security_group" "ec2_ssh" {
    name = "allow_ssh"
    description = "Allow inbound SSH"
    vpc_id = aws_vpc.main.id

    ingress {
        description = "Allow SSH inbound"
        from_port   = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "ec2_ssh"
    }

}