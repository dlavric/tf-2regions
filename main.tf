resource "aws_instance" "app_server1" {
  ami           = "ami-00fa576fb10a52a1c"
  instance_type = "t2.micro"

  tags = {
    Name = "instance_1"
  }
}


resource "aws_instance" "app_server2" {
  ami           = "ami-08d70e59c07c61a3a"
  instance_type = "t2.micro"
  provider = aws.west 

  tags = {
    Name = "instance_2"
  }
}

