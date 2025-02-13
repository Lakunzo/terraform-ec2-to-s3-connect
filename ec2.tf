#Create an EC2 instance
resource "aws_instance" "storage-srv" {
   ami = "ami-085ad6ae776d8f09c"
  instance_type = "t2.micro"
  key_name = ""
  security_groups = [ "" ]
  availability_zone = "us-east-1a"
  associate_public_ip_address = "true"
  iam_instance_profile = aws_iam_instance_profile.ec2instance.name
  tags = {
    "Name" = "StorageSRV"
  }
}

#Create an IAM instance profile
resource "aws_iam_instance_profile" "ec2instance" {
  name = "IAMEC2Instance"
  role = aws_iam_role.ec2role.name    #attaching the IAM role to the instance profile
}
