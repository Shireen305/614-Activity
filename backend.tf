terraform {
      backend "s3" {
      bucket = "my-terraform-state-bucket-sm"
      key    = "prod/terraform.tfstate"
      region = "us-east-1"
}
  
}

  
  
