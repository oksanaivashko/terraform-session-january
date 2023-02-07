# This task creates VPC with the following configurations:
1. Create a VPC with CIDR Block of 10.0.0.0/16
2. Create 3 public subnets and 3 private subnets
3. Create Int-gateway and Nat-gateway 
4. create Public and Private Route Tables
5. Attach IntGateway to the VPC, route table and associate all public subnets
6. Attach NatGateway to the public subnet, private route table and associate all private subnets