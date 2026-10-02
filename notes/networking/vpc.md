# VPC

- ## DNS Support
    Allows resources to access other internet resources via their hostnames isntead of exxplicitly providing their IP. E.g: they can look up `github.com` instead of looking up by github's IP Address.

- ## DNS Hostnames
    Allows resources that are internet facing to have a lookup name instead of accessing them via their IP address.

- Subnet
- Route Table
- Internet Gateway
- NAT Gateway
- VPC Endpoints
- CIDR Block

## NACL
NACL works in descending order. The most reccent rule is what it remembers (fact check this)
- It is stateless as in if an outbound rule is explicitly denied to an IP on a specified port, it won't return any message/packet even if it allows inbound.

