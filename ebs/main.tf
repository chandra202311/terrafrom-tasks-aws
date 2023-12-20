resource "aws_instance" "my_instance" {
  ami           = "ami-0c55b159cbfafe1f0"  # Replace with your desired AMI ID
  instance_type = "t2.micro"
}

resource "aws_volume_attachment" "my_volume_attachment" {
  device_name = "/dev/xvdf"  # Change this to your desired device name
  instance_id = aws_instance.my_instance.id
  volume_id   = aws_ebs_volume.my_ebs_volume.id
}

resource "aws_ebs_volume" "my_ebs_volume" {
  availability_zone = "us-east-1a"  # Change this to your desired availability zone
  size              = 10
}
