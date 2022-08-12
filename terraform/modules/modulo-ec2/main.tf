resource "aws_instance" "app" {
  ami = "ami-0729e439b6769d6ab"
  instance_type = "t2.micro"
  tags = {
    Name = "terraform-prova"
  }
}