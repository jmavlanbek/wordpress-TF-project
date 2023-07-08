# wordpress-TF-project

## Usage:

```hcl
module "ec2" {
  source  = ""
  version = "0.0.1"
  region = "us-east-2"
  vpc_cidr = "10.0.0.0/16"
  vpc_public1_cidr = "10.0.1.0/24"
  vpc_public2_cidr = "10.0.2.0/24"
  vpc_public3_cidr = "10.0.3.0/24"
  vpc_private1_cidr = "10.0.101.0/24"
  vpc_private2_cidr = "10.0.102.0/24"
  vpc_private1_cidr = "10.0.103.0/24"
  key_name          = "group2-key"
  instance_type     = "t2.micro"
  instance_class    = "db.t2.micro"
  default_cidr      = "0.0.0.0/0"
  root_volume_size  = 22
  database_name     = "kaizen_group2" 
  database_user     = "group2_user"   
  database_password = "Kaizen2023" 
  domain_name       = "word.group2adfkj.com"
  record_name       = "www"
}
```