resource "aws_instance" "main-server" {
  ami           = "ami-008ea0202116dbc56"
  instance_type = var.system_config //here based on the predicted configuration we feed the value

  tags = {
    Name = "System Predicted"
  }
}

//We can add more configuration as required and build an infrastructure on AWS.
