# ! Create S3 bucket with admin role permission

# Declaring terraform provider - using this version
# ? Terraform configurations must declare which providers 
# ? they require so that Terraform can install and use them.

resource "aws_s3_bucket" "my_bucket" {
  bucket = "terraformawsconnectbucket456"
  
}

resource "aws_iam_role" "ec2_admin_role" {
  name               = "ec2-admin-role"
  assume_role_policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
      {
        "Effect": "Allow",
        "Principal": {
          "Service": "ec2.amazonaws.com"
        },
        "Action": "sts:AssumeRole"
      }
    ]
  })
}












/*
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.37.0"
    }
  }
}

provider "aws_s3_bucket" "example" {
  # Configuration options
  region = 
}

*/

/*
resource "aws_s3_bucket" "my_bucket" {
  bucket = "terraformawsconnectbucket456"
  
}

# ! AdministratorAccess
# ? Provides full access to AWS services and resources.

resource "aws_iam_role" "dlm-permission-role" {
  name = "dlm-permission-role"

  assume_role_policy = jsonencode (
  {
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "*",
            "Resource": "*"
        }
    ]
})

}*/





/*resource "aws_iam_role" "dlm_lifecycle_role" {
  name = "dlm-lifecycle-role"

  assume_role_policy = jsonencode({
    
    
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Effect" : "Allow",
        "Principal" : {
          "Service" : "dlm.amazonaws.com"
        },
        "Action" : "sts:AssumeRole"
      }
    ]
  })
}
  */