# How to calculate subnets 
### Given scenario

#### 130.4.0.0/16 address has been aquired for subnetting
#### 5 subnets are required
#### 2000 host IP addresses / subnet are required

## Step 1 (How many hosts bits to trade for subnets)

**How many bits do we need to trade from the hosts to accomodate the networks required**

**2<sup>number of traded host bits</sup>=Number of Subnets**<br>
**2<sup>1</sup>=2**<br>
**2<sup>2</sup>=4**<br>
**2<sup>3</sup>=8**<br>
**2<sup>4</sup>=16**<br>
**2<sup>5</sup>=32**<br>
**2<sup>6</sup>=64**<br>
**2<sup>7</sup>=128**<br>
**2<sup>8</sup>=256**<br><br>
**This shows us:**<br>
**to get 4 subnets we need to trade 2 host bits to networks**<br> 
**to get 8 subnets we need to trade 3 host bits to networks**<br><br> 
**In this case 4 subnets (trading 2 host bits to networks) is not enough as we need 5 subnets, therefore we need to trade 3 host bits, giving us 8 networks. We could trade more host bits giving us more networks, however we would also need to make sure we have enough host bits remaining to accomodate the required hosts/subnet requirements. This calcluation is done with this formular**<br>
**(2<sup>host bits</sup>)-2=Number Of Host Addresses**<br><br> 
## Step 2 (Creating the new Subnet Mask)
**From step 1 we have learnt how many bits we needed to trade to create the required subnets**
**The new subnet mask is the old subnet mask in CIDR notation + the number of traded bits from step 1**
**In our case the old subnet mask was /16 and we required 3 traded host bits to create the required subnets, so the new subnet mask is /19 (16+3)**
**In binary that is 11111111 11111111 11100000 00000000 (255.255.224.0)**
