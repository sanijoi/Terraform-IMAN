terraform {
    backend "s3" {
        bucket  = "terraform-sam-session"
        key    = "session-5/terraform.tfstate"
        region = "us-east-2" 
        dynamodb_table = "table-session-5"
    }
}