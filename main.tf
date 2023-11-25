module "aws_iam_policy" {
  source = "./modules/iam"
}

module "aws_ec2_instance" {
  source = "./modules/ec2"
  
}