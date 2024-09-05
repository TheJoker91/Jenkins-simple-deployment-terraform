# Define the EC2 instance
resource "aws_instance" "jenkins" {
  ami             = "ami-02c21308fed24a8ab"     # Replace with the latest Amazon Linux 2 AMI ID for your region
  instance_type   = "t2.micro"                  # Choose an instance type that suits your needs
  key_name        = aws_key_pair.jenkins_key.key_name # Replace with your SSH key name
  security_groups = [aws_security_group.jenkins_sg.name]
  user_data       = file("install.sh")
  tags = {
    Name = "JenkinsServer"
  }
}