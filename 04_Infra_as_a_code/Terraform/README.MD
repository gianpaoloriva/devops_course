# Infrastructure as a code

## Docker Terraform Run

    docker run -i -t --env AWS_ACCESS_KEY_ID= --env AWS_SECRET_ACCESS_KEY= --rm --mount type=bind,source=$(pwd),target='/terraform' -w /terraform hashicorp/terraform:latest init
    
    docker run -i -t --env AWS_ACCESS_KEY_ID= --env AWS_SECRET_ACCESS_KEY= --rm --mount type=bind,source=$(pwd),target='/terraform' -w /terraform hashicorp/terraform:latest plan
    
    docker run -i -t --env AWS_ACCESS_KEY_ID= --env AWS_SECRET_ACCESS_KEY= --rm --mount type=bind,source=$(pwd),target='/terraform' -w /terraform hashicorp/terraform:latest apply
    
     docker run -i -t -v ~/.aws/credentials:/root/.aws --rm --mount type=bind,source=$(pwd),target='/terraform' -w /terraform hashicorp/terraform:latest destroy

  

## Lambda Example
 
This examples shows how to deploy an AWS Lambda function using Terraform only.

To run, configure your AWS provider as described in https://www.terraform.io/docs/providers/aws/index.html

 Running the example

run `terraform apply` to see it work.

  

## Basic Two-Tier AWS Architecture

  This provides a template for running a simple two-tier architecture on Amazon

Web services. The premise is that you have stateless app servers running behind

an ELB serving traffic.

To simplify the example, this intentionally ignores deploying and

getting your application onto the servers. However, you could do so either via

[provisioners](https://www.terraform.io/docs/provisioners/) and a configuration

management tool, or by pre-baking configured AMIs with

[Packer](http://www.packer.io).

  
This example will also create a new EC2 Key Pair in the specified AWS Region.

The key name and path to the public key must be specified via the

terraform command vars.

  
After you run `terraform apply` on this configuration, it will

automatically output the DNS address of the ELB. After your instance

registers, this should respond with the default nginx web page.

 To run, configure your AWS provider as described in

  https://www.terraform.io/docs/providers/aws/index.html

Run with a command like this:

```
terraform apply -var 'key_name={your_aws_key_name}' \

-var 'public_key_path={location_of_your_key_in_your_local_machine}'
```

 For example:
```
terraform apply -var 'key_name=terraform' -var 'public_key_path=/Users/jsmith/.ssh/terraform.pub'
```

## AWS Networking Example
 
This example creates AWS VPC resources, making a VPC in each of two regions and

then two subnets in each VPC in two different availability zones.

This example also demonstrates the use of modules to create several copies of

the same resource set with different arguments. The child modules in this

directory are:

*  `region`: container module for all of the network resources within a region. This is instantiated once per region.

*  `subnet`: represents a subnet within a given availability zone. This is instantiated twice per region, using the first two availability zones supported within the target AWS account.

 
## Creating an RDS instance in AWS

This example provides sample configuration for creating a mysql or postgres instance. For Oracle/SQL Servers, replace default values with appropriate values, they are not included in sample since the number of options are high.

The example creates db subnet groups and a VPC security group as inputs to the instance creation

For AWS provider, set up your AWS environment as outlined in https://www.terraform.io/docs/providers/aws/index.html

If you need to use existing security groups and subnets, remove the `sg.tf` and `subnets.tf` files and replace the corresponding sections in `main.tf` under `aws_db_instance`

Pass the password variable through your ENV variable.

Several parameters are externalized, review the different variables.tf files and change them to fit your needs. Carefully review the CIDR blocks, egress/ingress rules, availability zones that are very specific to your account.

Once ready run `terraform plan` to review.

At the minimum, provide the vpc_id as input variable.

Once satisfied with plan, run `terraform apply`