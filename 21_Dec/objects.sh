#!/bin/bash

# Define the S3 bucket name
BUCKET_NAME="mystaticwebsiteswapnil2023"


# Loop through each file in the current directory
for file in *; do
    # Check if it's a regular file (not a directory)
    if [ -f "$file" ]; then
        # Copy the file to the S3 bucket
        echo "Uploading $file to s3://$BUCKET_NAME/"
        aws s3 cp "$file" "s3://$BUCKET_NAME/"
    fi
done


