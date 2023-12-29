# terraform_infra_code
terraform code files for infra using resources

18_dec terraform task: 
Create a simple VPC with public and private subnets, an internet gateway, and a NAT gateway

Step: using terraform resources we create the desire infra (vpc,subnets,nat,getway,elasticip,route tables and associations)


19_dec terraform task:
Create an RDS database in a separate VPC subnet and configure the EC2 instance to connect to the database using VPC endpoints.

Step: using terraform resources we create the desire infra (vpc,subnets,nat,getway,elasticip,route tables and associations, rds_instance, security group, endpoint and ec2)

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
