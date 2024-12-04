#------------- define region ----------------------

provider "aws" {

  region  = var.region
  profile = "terra_test"
}