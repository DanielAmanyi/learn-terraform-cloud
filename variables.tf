variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "instance_type" {
  # type = map
  description = "Type of EC2 instance to provision"
  default     = {
    main = "t2.micro"
    Dev = "t2.nano"
    Test = "t3.medium"}
}

variable "instance_name" {
  description = "EC2 instance name2"
  default     = "Provisioned by DanielAmanyi"
}

