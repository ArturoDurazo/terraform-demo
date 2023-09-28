module "vpc" {
  source   = "./modules/vpc"
  vpc_cidr = "10.0.0.0/16"
}

module "subnet" {
  source      = "./modules/subnet/"
  subnet_cidr = "10.0.0.0/24"
  vpc_id      = module.vpc.vpc_id
}

module "ec2" {
  source = "./modules/ec2"

  instance_type = "t2.micro"
  ami_id        = "ami-0c94855ba95c71c99"
  subnet_id     = module.subnet.subnet_id
  sg_id         = module.sg.id
}

module "sg" {
  source = "./modules/sg"
  vpc_id = module.vpc.vpc_id
}