#S3 Backend statefile
terraform {
  backend "s3" {
    bucket          = "tf-statefile-bucket"
    key             = "tf-statefile-bucket/terraform.tf.state"
    region          = "us-east-1"
    dynamodb_table  = "state-locking"
  }
}
