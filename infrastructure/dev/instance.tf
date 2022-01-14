resource "aws_network_interface" "example" {
    subnet_id = aws_subnet.subnet_1.id

    tags = {
        Name = "primary"
    }
}

resource "aws_instance" "example" {
    ami = "ami-0fdbd8587b1cf431e"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.subnet_1.id
    associate_public_ip_address = true

    key_name = "ec2-ssh-access"

    root_block_device {
      delete_on_termination = true
      encrypted = true
    }

    vpc_security_group_ids = [aws_security_group.ec2_ssh.id]

    tags = {
        Name: "instance1"
    }
}