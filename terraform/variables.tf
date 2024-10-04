variable "region" {
  default = "us-east-1"
}
variable "ami" {
  default = "ami-0866a3c8686eaeeba"
}
variable "instance_type" {
  default = "t2.micro"
}
variable "key_name" {
  default = "ec2_key"
}
variable "algorithm" {
  default = "RSA"
}
variable "rsa_bits" {
  default = 4096
}
variable "filename" {
  default = "tf_priv_key.pem"
}
variable "byte_length" {
  default = 8
}