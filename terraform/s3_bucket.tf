# Create S3 bucket for Jenkins artifacts
resource "aws_s3_bucket" "jenkins-artifacts" {
  bucket = "jenkins-artifacts-${random_id.randomness.hex}"
  tags = {
    Name = "jenkins_artifacts"
  }
}
# Create random number for S3 bucket name
resource "random_id" "randomness" {
  byte_length = var.byte_length
}