# Using -match to create a PowerShell object

### Use the following code

```
'123.34.56.221' -match '^(?<FirstOctet>\d{1,3})\.(?<SecondOctet>\d{1,3})\.(?<ThirdOctet>\d{1,3})\.(?<FourthOctet>\d{1,3})$'
$Matches.Remove(0)
New-Object -TypeName PSObject -Property $Matches
```
**$Matches is a system variable that will be populated with the match capturing brackets, using the naming as above you can name the keys in the hash table**

**The $Matches.Remove(0) command removes the 0 key from the hashtable which is the entire string matched, which by default is always added as well to the hash table along with the captured portions**
