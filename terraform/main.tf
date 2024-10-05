# EC2 Instance for Web Application
resource "aws_instance" "web_app" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = aws_key_pair.public_key.id
  vpc_security_group_ids = [aws_security_group.web_app_sg.id]
  user_data              = file("./scripts/install_web_app.sh")
  tags = {
    Name        = "web_app"
    Description = "My Web Application"
  }
}
# EC2 Instance for Jenkins Server
resource "aws_instance" "jenkins_server" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = aws_key_pair.public_key.id
  vpc_security_group_ids = [aws_security_group.jenkins_sg.id]
  user_data              = file("./scripts/install_jenkins.sh")
  tags = {
    Name        = "jenkins_server"
    Description = "Jenkins Instance"
  }
}
# EC2 Instance for Prometheus Server
resource "aws_instance" "prometheus_server" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = aws_key_pair.public_key.id
  vpc_security_group_ids = [aws_security_group.prometheus_sg.id]
  user_data              = file("./scripts/install_prometheus.sh")
  tags = {
    Name        = "prometheus_server"
    Description = "Prometheus Instance"
  }
}
# EC2 Instance for Grafana Server
resource "aws_instance" "grafana_server" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = aws_key_pair.public_key.id
  vpc_security_group_ids = [aws_security_group.grafana_sg.id]
  user_data              = file("./scripts/install_grafana.sh")
  tags = {
    Name        = "grafana_server"
    Description = "Grafana Instance"
  }
}