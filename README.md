# Terraform-AWS-ITI Project

## Overview

This project sets up a secure and scalable cloud infrastructure on AWS using Terraform. The architecture includes:

- **Virtual Private Cloud (VPC):** An isolated network environment for AWS resources.
- **Public and Private Subnets:** Segregation of resources based on accessibility requirements.
- **EC2 Instances:** Virtual servers for running applications.
- **NAT Gateway:** Enables instances in private subnets to access the internet securely.
- **Reverse Proxy:** Route traffic to backend servers
- **Load Balancer:** Distributes traffic across instances to ensure high availability.
- **S3 and DynamoDB:** Used for remote state management
## Architecture Diagram
![Image](https://github.com/user-attachments/assets/22a9509d-58b4-4092-bb0d-c3a5b6491229)

The diagram represents a VPC and two LoadBalancers designed to handle internet traffic efficiently using Nginx as reverse proxy and backend web servers across multiple availability zones (AZs).
## Architecture Components

1. **VPC (Virtual Private Cloud):**
- Provides an isolated network environment for AWS resources.

2. **Internet Gateway (IGW):**
- Connects the VPC to the internet, enabling resources in public subnets to access the internet.

3. **Public Subnets:**
- Two public subnets are created with a public route table.
- These subnets contain internet-facing resources, like the Bastion Host.

4. **Private Subnets:**
 - Two private subnets are created with a private route table.
  - These subnets contain internal resources, such as application servers.

5. **Route Tables:**
  - *Public Route Table:* Routes traffic from public subnets to the Internet Gateway.
   - *Private Route Table:* Routes internal traffic and directs internet-bound traffic through the NAT Gateway.

6. **NAT Gateway:**
  - Allows instances in private subnets to initiate outbound internet connections while preventing unsolicited inbound traffic.

7. **Elastic IP:**
  - Provides a static public IP address for the NAT Gateway.

8. **Security Groups:**
  - Act as virtual firewalls to control inbound and outbound traffic for instances.

9. **Nginx Instances:**
  - EC2 instances running Nginx, located in public subnets,used as a reverse proxy.​
10. **Apache Backend Instances:**
   - located in private subnets, handling web traffic.

11. **Load Balancer:**
   - Distributes incoming traffic across EC2 instances to ensure high availability and fault tolerance.





## Getting Started

1. **Install Terraform:**
   - Download and install Terraform from the [official website](https://www.terraform.io/downloads).

2. **Configure AWS Credentials:**
   - Ensure your AWS credentials are set up on your machine, typically using the AWS CLI.

3. **Initialize Terraform:**
   - Run `terraform init` to initialize the project.

4. **Plan the Deployment:**
   - Execute `terraform plan` to preview the infrastructure changes.

5. **Apply the Deployment:**
   - Run `terraform apply` to create the infrastructure on AWS.

## Screen Shots
- Main VPC 
![Image](https://github.com/user-attachments/assets/e143d938-8b83-46f9-82e1-b17e8e666f81)
- External LoadBalancer
![Image](https://github.com/user-attachments/assets/e3a76a2a-62ee-4757-a347-be8c85e5ef4d)
- Internal LoadBalancer
![Image](https://github.com/user-attachments/assets/3ea0c121-412d-4e42-a719-ff4d50a4f3c4)
- S3 Bucket: Stores Terraform state
![Image](https://github.com/user-attachments/assets/935d1554-9fd2-47d8-afb0-76ae751c9a67)
- EC2 Instances
![Image](https://github.com/user-attachments/assets/498019f3-f7a4-4d7e-b444-1d8bf8d3cc36)
- Nginx configuration as Reverse Proxy 
- ![Image](https://github.com/user-attachments/assets/f3610997-d1bc-45b3-98e0-77a138a3b706)
- Testing With External LB DNS
![Image](https://github.com/user-attachments/assets/584d14a8-5993-41e3-a19a-8858133e2353)
![Image](https://github.com/user-attachments/assets/ec139366-8e86-451c-a2ec-ea91a9c91ced)
