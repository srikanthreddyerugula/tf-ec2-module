# ses-34 the below code 

variable "ami_id" { 
  type = string # list of ami-id lu iste error vastundhi bcz here value only string
  default = "" # ikkada values ichhina user ki chance vunttadhi for edit... so leave it
  description = "this is the ami used to create EC2 server"
  # so ila empty ga pedithe values update chayli must be provide
}

variable "instace_moduletype" {     
type = string
# so ila empty ga pedithe values update chayli must be provide
description = "Instance type is used for creating EC2 instance or server"
validation {
    condition     = contains(["t3.micro", "t3.small", "t3.medium"], var.instace_moduletype)
    error_message = "Please select either t3 micro or small or medium"
  }
# see in notes
}

variable "sg_ids" {
  type = list
  # so ila empty ga pedithe values update chayli must be provide
}

# optional
variable "tags" {
  type = map
  default = {} # ila pedithe idhi optinal ani meaning9
}