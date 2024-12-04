#-------------------------- Create S3 Bucket-----------------------#
resource "aws_s3_bucket" "Cloudkode_s3" {
  bucket = "cloudkode1-s3"                     # اسم أي باكت انا اعملها يدوي علي الاستورج بتاعتي  
  force_destroy = true
  tags = {
    Name = "cloudkode1-s3"
  }
}
