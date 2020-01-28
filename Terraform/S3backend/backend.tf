terraform {
    backend "s3"{
        bucket = "ramterraformstatestorage"
        key = "backend"
        region = "us-east-1"
    }
}
