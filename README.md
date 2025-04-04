# Terraform-AWS-ITI Project

# Overview
This project sets up a secure and scalable cloud infrastructure on AWS using Terraform. The architecture includes a Virtual Private Cloud (VPC) with public and private subnets, EC2 instances, a NAT Gateway, a Bastion Host, and a Load Balancer to ensure high availability and fault tolerance.​

## Architecture Components
1. VPC (Virtual Private Cloud): Provides an isolated network environment for AWS resources.​
2. Internet Gateway (IGW): Enables communication between resources in the VPC and the internet.​


3. Public Subnets: Host internet-facing resources, such as the Bastion Host, and are associated with a public route table.​


4. Private Subnets: Contain internal resources, like Nginx servers, and use a private route table.​


5. Route Tables:

- Public Route Table: Routes traffic from public subnets to the Internet Gateway.​


- Private Route Table: Routes internal traffic and directs internet-bound traffic through the NAT Gateway.​

6.  NAT Gateway: Allows instances in private subnets to initiate outbound internet connections while preventing unsolicited inbound traffic.​


7. Elastic IP: Provides a static public IP address for the NAT Gateway.​


8. Security Groups: Act as virtual firewalls to control inbound and outbound traffic for instances.​

9. Nginx Instances: EC2 instances running Nginx, located in public subnets,used as a reverse proxy.​

10. Apache Backend Instances : located in private subnets, handling web traffic

11. Load Balancer:
- External Load Balancer: Distributes incoming traffic across two Nginx instances configured as a reverse proxy.


- Internal Load Balancer: Distributes traffic from both Nginx instances to the two Apache
servers in backend to ensure isolation




## Architecture Diagram

![](https://imgur.com/a/y0k5htI)
The diagram represents a VPC and two LoadBalancers designed to handle internet traffic efficiently using Nginx as reverse proxy and backend web servers across multiple availability zones (AZs).


## Getting Started
1. Install Terraform:
- Download and install Terraform from the official website.​

2. Configure AWS Credentials:
 - Ensure your AWS credentials are set up on your machine, typically using the AWS CLI.​


3. Initialize Terraform:
- Run terraform init to initialize the project.​

4. Plan the Deployment:
- Execute terraform plan to preview the infrastructure changes.​

5. Apply the Deployment:
- Run terraform apply to create the infrastructure on AWS.​



## Screen Shots

![](https://imgur.com/a/y0k5htI)
