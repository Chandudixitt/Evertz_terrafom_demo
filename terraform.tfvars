aws_region           = "us-west-1"
vpc_cidr_block       = "10.0.0.0/16"
key_name             = "my-key"
create_vpc   = "yes"
App_prefix = "evertz"
Env_prefix = "dev"
vpc_prefix = "vpc"
subnet_prefix = "subnet"
publicrt_prefix = "rt"
igw_prefix  = "igw"

subnet_cidr = [
    {address_prefix = "10.0.1.0/24"},
    {address_prefix = "10.0.2.0/24"}
]

//instance_details ={
  //  bin = {
        //assign_public_ip = "yes"
        //sg_index = 0
        //instance_type = "t2.micro"
        //volume_type = "gp3"
        //volume_size = 64
        //ami_id = "ami-0abcdef1234567890"
    //},
    //bash = {
      //  assign_public_ip = "yes"
        //sg_index = 0
       // instance_type = "t2.micro"
        //volume_type = "gp2"
        //volume_size = 64
        //ami_id = "ami-0abcdef1234567890"
    //}
//}
