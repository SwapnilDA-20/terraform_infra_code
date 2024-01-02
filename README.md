# terraform_infra_code
terraform code files for infra using resources

18_dec terraform task: 
Create a simple VPC with public and private subnets, an internet gateway, and a NAT gateway

Step: using terraform resources we create the desire infra (vpc,subnets,nat,getway,elasticip,route tables and associations)


19_dec terraform task:
Create an RDS database in a separate VPC subnet and configure the EC2 instance to connect to the database using VPC endpoints.

Step: using terraform resources we create the desire infra (vpc,subnets,nat,getway,elasticip,route tables and associations, rds_instance, security group, endpoint and ec2)

We have variablize the username and password 

20_dec terraform task:
Create an ALB to distribute traffic to the EC2 instance and configure an autoscaling group based on CPU utilization

Step: using terraform resources we create the desire infra (load balancer, target group, autoscaling, launch temp, cloud watch metrics etc)

21_dec terraform task:
Create an S3 bucket for static website content and configure CloudFront with a custom domain name to serve the content from the bucket.

Step: using terraform resources we create the desire infra (s3_bucket,cdn, bucket policy,iam role)
we write the objects.sh script to copy objetcs to locals using null resource

22_dec terraform task:
Write a user data script to install and configure an application on the EC2 instance and set up CloudWatch monitoring for key metrics like CPU utilization and memory usage.

Step: using terraform resources we create the desire infra (ec2,iam role,security group,cw_agent,cloud watch metrics)
we write the cw_agent_config.json file for ec2 metrics like mem and disk
we write nginx.sh shell script to install cw_agent on ec2 machine













1. terraform init
Purpose: Initializes a Terraform working directory, downloading any necessary plugins and modules.
Changes and Files:
Creates a .terraform directory with plugin binaries.
Creates a terraform.lock.hcl file to lock the provider versions.
Does not modify infrastructure.

2. terraform plan
Purpose: Creates an execution plan, showing what actions Terraform will perform upon applying.
Changes and Files
Does not create any new files (by default).
Does not modify infrastructure.
Optionally, can output a plan file (-out flag) which can be used with terraform apply.

3. terraform apply
Purpose: Applies the changes required to reach the desired state of the configuration.
Changes and Files:
Modifies infrastructure to match the configuration.
Updates the terraform.tfstate and terraform.tfstate.backup files, reflecting the current state of the infrastructure.
Optionally, takes a plan file as input.

4. terraform destroy
Purpose: Destroys the Terraform-managed infrastructure.
Changes and Files:
Modifies infrastructure by removing all resources.
Updates the terraform.tfstate file, which will be essentially empty after this operation.

5. terraform fmt
Purpose: Rewrites Terraform configuration files to a canonical format and style.
Changes and Files:
Modifies configuration files (.tf files) to standard formatting.
Does not modify infrastructure.

6. terraform validate
Purpose: Validates the syntax of the Terraform files.
Changes and Files:
Does not create or modify files.
Does not modify infrastructure.
Useful for catching syntax errors and misconfigurations.

7. terraform refresh
Purpose: Updates the local state file against real-world resources.
Changes and Files:
Updates the terraform.tfstate file to match real-world resources.
Does not modify infrastructure itself.

8. terraform import
Purpose: Brings existing infrastructure under Terraform management.
Changes and Files:
Updates the terraform.tfstate file to include the imported resources.
Does not create other files.
Does not modify the existing infrastructure.

9. terraform output
Purpose: Shows the output variables as defined in the configuration.
Changes and Files:
Reads values from the terraform.tfstate file.
Does not create or modify files.
Does not modify infrastructure.

10. terraform taint and terraform untaint
Purpose: Marks a Terraform-managed resource as tainted, forcing it to be destroyed and recreated on the next apply.
Changes and Files:
Updates the terraform.tfstate file to mark resources as tainted.
Does not directly modify infrastructure until apply is run.

Key Points:
State File (terraform.tfstate): This is a crucial file that Terraform uses to map resources to the configuration and to keep track of metadata. It's updated on actions that change the state of resources.
Plan File: Optionally created by terraform plan and used by terraform apply for a predictable infrastructure change.
Configuration Files: .tf files are your main configuration files. They are read by most Terraform commands to understand the desired state of your infrastructure.
