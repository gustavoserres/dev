variable "aws_ami" {
    type = map(string)
    default = {
        "amazon-linux-eu-west-3" = "ami-0eb375f24fdf647b8"
        "amazon-linux-eu-west-2" = "ami-00785f4835c6acf64"
    }
}