# Create pub_keys generated from tls_private_key
resource "aws_key_pair" "public_key" {
  key_name   = var.key_name
  public_key = tls_private_key.private_key.public_key_openssh
}
# Create priv_keys
resource "tls_private_key" "private_key" {
  algorithm = var.algorithm
  rsa_bits  = var.rsa_bits
}
# Save priv_keys to local file
resource "local_file" "tf_key" {
  content  = tls_private_key.private_key.private_key_pem
  filename = var.filename
}