resource "aws_instance" "server_05" {
    ami = "ami-0d682f26195e9ec0f"
    instance_type = "t2.micro"
      tags = {
    Name = "HelloWorld21212"
  }

  
  
}