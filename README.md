# Attach s3 bucket to an EC2 instance
## Project Overview

This project will give an EC2 instance access to a specific S3 bucket. It will allow the EC2 instance to list, get, put and delete objects in the S3 bucket. It leverages **Amazon IAM**, **S3** and **EC2** to provide access to resources in the bucket. It demonstrates how Infrastructure as a Code using Terraform can be used to deploy such a scenario in a matter of seconds. 

## Features
* Creates an S3 bucket with ownership permissions
* Creates an IAM role and S3 bucket policy with limited permissions
* Attaches the IAM S3 bucket policy to the IAM role
* Creates an EC2 instance, and attaches an IAM profile instance to it
* Allows EC2 instance access only to the S3 bucket

## Architectural Diagram
![Architectural Diagram](https://i.postimg.cc/Bvqq4Kv5/ec2-s3-drawio.png)
 
