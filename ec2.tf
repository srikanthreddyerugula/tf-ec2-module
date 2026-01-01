resource "aws_instance" "this" {
  ami           = var.ami_id  # manadatory
  instance_type = var.instace_moduletype  # manadatory
  vpc_security_group_ids = var.sg_ids # manadatory
  tags = var.tags # Optional
} # so ikkada instances or server create avuthai based on above code 

# so keys ni changes chyelemu so vati ki vunna values change chetse we can get o/p as 
# per the changes..check

# General ga use chestunnnaru so we need use "this" syntax not a mandatory just for 
# understand purpose


# test file name is roboshop-ec2-test see there for results