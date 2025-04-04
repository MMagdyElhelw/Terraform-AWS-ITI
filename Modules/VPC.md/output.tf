output "VPC-ID" {
    value = aws_vpc.magdy_VPC.id
}
output "IGW-ID" {
    value = aws_internet_gateway.project_IGW.id
}