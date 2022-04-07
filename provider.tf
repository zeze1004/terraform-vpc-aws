provider "aws" {
  profile = "sulsul" 
  region = "ap-northeast-2"
}
resource "aws_vpc" "main" {
	# ip 대역
	cidr_block = "10.0.0.0/16"
	# 리소스 정보 설정
	tags = {
		Name = "Dev_sulsul"
	}
}

terraform {
    backend "s3" {
      bucket         = "tf-state.sulsul"
      key            = "terraform.tfstate"
      region         = "ap-northeast-2"  
    }
}