output "web_app_public_ip" {
  value = aws_instance.web_app.public_ip
}
output "jenkins_public_ip" {
  value = aws_instance.jenkins_server.public_ip
}
output "grafana_public_ip" {
  value = aws_instance.grafana_server.public_ip
}
output "prometheus_public_ip" {
  value = aws_instance.prometheus_server.public_ip
}