resource "aws_default_security_group" "vpc" {
    vpc_id = aws_vpc.main.id

    tags = {
        Name = "main"
    }
}