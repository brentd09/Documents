# Interesting RegEx Strings
NB: I have developed these just to fill a need, if you have a better way to do these I would love to hear about it.
<BR>
### RegExUrls
```  
https://medium.com/factory-mind/regex-tutorial-a-simple-cheatsheet-by-examples-649dc1c3f285
http://regex101.com
https://www.regular-expressions.info/  
```

### Match a valid IP Address from 1.1.1.1 to 223.255.255.255

```
^(1[0-9]?[0-9]?|2[0-1][0-9]|22[0-3]|[2-9][0-9]?)\.((1[0-9]?[0-9]?|2[0-1][0-9]|2[2-5][0-5]|[2-9][0-9]?)\.){2}(1[0-9]?[0-9]?|2[0-1][0-9]|2[2-5][0-5]|[2-9][0-9]?)$
```

### Match email addresses 
#### (Not sure if the trailing period is required for some FQ Email Addresses)

```
^[a-z0-9][a-z0-9._\-$%^&*()#!~+=]+@([a-z0-9]+\.)+[a-z0-9]{2,3}\.?$
```
