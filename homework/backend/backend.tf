terraform {
    backend "s3" {
        bucket  = "terraform-sam-session"
        key    = "homework/backend/terraform.tfstate"
        region = "us-east-2" 
        dynamodb_table = "table-session-5"
    }
}