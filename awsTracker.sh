#!/bin/bash

# Author: Tapabrata Dutta
# Date: 03/08/2025
# Purpose: Collect basic AWS resource information using AWS CLI

set -x  # Debug mode

LOG_FILE="aws_output.log"
> "$LOG_FILE"  # Clear old log file

# List S3 Buckets
echo -e "\n==== S3 Buckets ====" >> "$LOG_FILE"
aws s3 ls >> "$LOG_FILE"

# List EC2 Instances
echo -e "\n==== EC2 Instances ====" >> "$LOG_FILE"
aws ec2 describe-instances | jq -r '.Reservations[].Instances[].InstanceId' >> "$LOG_FILE"

# List Lambda Functions
echo -e "\n==== Lambda Functions ====" >> "$LOG_FILE"
aws lambda list-functions >> "$LOG_FILE"

# List IAM Users
echo -e "\n==== IAM Users ====" >> "$LOG_FILE"
aws iam list-users >> "$LOG_FILE"

