//terraform {
  //backend "s3" {
    //bucket = "mybucket"
    //key    = "path/to/my/key"
    //region = "us-east-1"
  //}
//}

data "aws_availability_zones" "available" {
  state = "available"
}

module "vpc" {
  source = "./modules/vpc"
  count = lower(var.create_vpc) == "yes" ? 1 : 0
  m_vpc_name  = "${var.App_prefix}-${var.Env_prefix}-${var.vpc_prefix}"
  m_vpc_cidr_block = var.vpc_cidr_block
}

module "internet_gateway" {
  source       = "./modules/internet_gateway"
  count = lower(var.create_vpc)  == "yes" ? 1 : 0
  m_igwname = "${var.App_prefix}-${var.Env_prefix}-${var.igw_prefix}-${count.index +1}"
  m_vpc_id       = module.vpc[0].vpc_id
  depends_on  = [module.vpc]
}

module "subnet" {
  source       = "./modules/subnet"
  count     = lower(var.create_vpc) == "yes" ? length(var.subnet_cidr) : 0
  m_snetname  = "${var.App_prefix}-${var.Env_prefix}-${var.subnet_prefix}-${count.index +1}"
  m_vpc_id       = module.vpc[0].vpc_id
  m_subnet_cidr  = var.subnet_cidr[count.index].address_prefix
  depends_on  = [module.vpc]
}

module "route_table" {
  source              = "./modules/route_table"
  count = lower(var.create_vpc) == "yes" ? 1 : 0
  m_publicrtname = "${var.App_prefix}-${var.Env_prefix}-${var.publicrt_prefix}-${count.index +1}"
  m_vpc_id = module.vpc[0].vpc_id
  m_subnet_id = module.subnet[*].subnet_ids
  m_internet_gateway_id = module.internet_gateway[0].internet_gateway_id
  depends_on  = [module.subnet]
}

//module "ec2_instance" {
  //source            = "./modules/ec2_instance"
  //blic_subnet_id  = module.subnet.public_subnet_id
  //key_name          = var.key_name
  //instance_type     = var.instance_type
  //ami_id            = var.ami_id
  //ssh_public_key    = var.ssh_public_key
//}

#comment
