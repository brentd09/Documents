# How to calculate subnets 
### Given scenario

- 130.4.0.0/16 address has been aquired for subnetting
- 5 subnets are required
- 2000 host IP addresses / subnet are required

## Step 1 (How many hosts bits to trade for subnets)

### How many bits do we need to trade from the hosts to accomodate the networks required?

### 2<sup>(number of traded host bits)</sup>=Number of Subnets
- 2<sup>1</sup>=2
- 2<sup>2</sup>=4
- 2<sup>3</sup>=8
- 2<sup>4</sup>=16
- 2<sup>5</sup>=32
- 2<sup>6</sup>=64
- 2<sup>7</sup>=128
- 2<sup>8</sup>=256
<br>

**This shows us:**

- to get 4 subnets we need to trade 2 host bits to networks
- to get 8 subnets we need to trade 3 host bits to networks> 
- In this case 4 subnets (trading 2 host bits to networks) is not enough as we need 5 subnets, therefore we need to trade 3 host bits, giving us 8 networks. We could trade more host bits giving us more networks, however we would also need to make sure we have enough host bits remaining to accomodate the required hosts / subnet requirements. 
- This formula for calulating the hosts / subnet is:
  - (2<sup>host bits</sup>)-2=Number Of Host Addresses 
## Step 2 (Creating the new Subnet Mask)
- From step 1 we have learnt how many bits we needed to trade to create the required subnets
- The new subnet mask = the old subnet mask in CIDR notation + the number of traded bits from step 1
- In our case the old subnet mask was /16 and we required 3 traded host bits to create the required subnets, so the new subnet mask is /19 (16+3)
- In binary that is 11111111 11111111 11100000 00000000 or (255.255.224.0)
## Step 3 (Discover the jump value between the subnets)
- With our new sunbet mask we need to determine the mathematical jump between the new subnets
- To do this, determine which octet is creating the subnets, in our case it is octet number 3 
- Next we get the value from the subnet mask from this octet, again in our case that is 224
- We then use the following formula:
  - 265 - subnet mask value = Jump value, in our case 256 - 224 = 32
- 32 is our jump value between each subnet
## Step 4 (Check to see if your solution has enough hosts / subnet)
- From the CIDR notation we can see
  - We have 19 bits for hosts (count the number of 1's in the binary subnet mask)
  - This means we have 13 bits for hosts / subnet (count the 0's in the binary subnet mask)
- As shown in step 1, the calculation for hosts/subnet in our case is:
  - (2<sup>13</sup) - 2 = 8190 hosts / subnet
- 8190 exceeds our requirements of 2000 hosts / subnet  
## Step 5 (Listing the subnets)
**Using our old IPaddress and the Jump value we can now create the new sunbet ranges**<br><br>

Subnet Number | Entire Subnet | Addresses that can be assigned to hosts
---|---|---
Subnet 1 | 130.4.0.0 - 130.4.31.255 | 130.4.0.1 - 130.4.31.254
Subnet 2 | 130.4.32.0 - 130.4.63.255 | 130.4.32.1 - 130.4.63.254
Subnet 3 | 130.4.64.0 - 130.4.95.255 | 130.4.64.1 - 130.4.95.254 
Subnet 4 | 130.4.96.0 - 130.4.127.255 | 130.4.96.1 - 130.4.127.254
Subnet 5 | 130.4.128.0 - 130.4.159.255 | 130.4.128.1 - 130.4.159.254


