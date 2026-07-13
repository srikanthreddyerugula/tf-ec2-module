

variable "ami_id" { 
  type = string
  default = ""  # we have given a chance to user,
  description = "this is the ami used to create EC2 server"
  
}

variable "instace_moduletype" {     
type = string
description = "Instance type is used for creating EC2 instance or server"
validation {
    condition     = contains(["t3.micro", "t3.small", "t3.medium"], var.instace_moduletype)
    error_message = "Please select either t3 micro or small or medium"
  }
}

variable "sg_ids" {
  type = list
  # here we haven't mention any defalut value bcz it is mandatory
}

# optional
variable "tags" {
  type = map
  default = {} # it tell us, it is optional
}