resource "aws_instance" "this" {    # ses-34 
  ami           = var.ami_id  # manadatory
  instance_type = var.instace_moduletype  # manadatory
  vpc_security_group_ids = var.sg_ids # manadatory
  tags = var.tags # Optional
} 

# so keys ni changes chyelemu so vati ki vunna values change chetse we can get o/p 

# General ga use chese code start using word is "this" syntax not a mandatory just for understand purpose
# 


# test file name is roboshop-ec2-test see there for results