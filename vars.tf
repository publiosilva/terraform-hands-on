variable "amis" {
  type = map(string)

  default = {
    "us-east-1" = "ami-0729e439b6769d6ab"
    "us-east-2" = "ami-02d1e544b84bf7502"
  }
}

variable "cidrs_remote_access" {
  type = list(string)

  default = [
    "177.37.132.180/32"
  ]
}

variable "key_name" {
  default = "terraform"
}
