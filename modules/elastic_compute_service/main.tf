resource "aws_instance" "elastic_compute_engine" {
  ami           = var.amazon_machine_image
  instance_type = var.instance_type
  user_data     = <<EOT
#!/bin/bash
sudo apt updtae && sudo apt install nginx -y
sudo echo "<h2>Amazon Web Service Terraform Learn</h2>"
  EOT
  
  security_groups = var.network_security_group
  
  tags = {
    Name = var.compute_names
  }
}

resource "aws_eip" "elastic_ip" {
  instance = aws_instance.elastic_compute_engine.id
}