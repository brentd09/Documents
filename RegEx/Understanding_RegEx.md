# Good RegEx Urls

```  
[RegEx Tutorial](https://medium.com/factory-mind/regex-tutorial-a-simple-cheatsheet-by-examples-649dc1c3f285)
[RegEx Cookbook](https://medium.com/factory-mind/regex-cookbook-most-wanted-regex-aa721558c3c1)
[RegEx Testing Playpen](https://regex101.com)
[RegEx Complete Guide](https://www.regular-expressions.info/)
[RegEx CheetSheet](https://www.cheatography.com/davechild/cheat-sheets/regular-expressions/)

```

# Interesting RegEx Strings
NB: I have developed these just to fill a need, if you have a better way to do these I would love to hear about it.
<BR>


### Match a valid IP Address from 1.1.1.1 to 223.255.255.255 (Class A - Class C, Valid Addresses)

```
^(1[0-9]?[0-9]?|2[0-1][0-9]|22[0-3]|[2-9][0-9]?)\.((1[0-9]?[0-9]?|2[0-1][0-9]|2[2-5][0-5]|[2-9][0-9]?)\.){2}(1[0-9]?[0-9]?|2[0-1][0-9]|2[2-5][0-5]|[2-9][0-9]?)$
```

### Match email addresses 
#### (Not sure if the trailing period is required for some FQ Email Addresses)

```
^[a-z0-9][a-z0-9._\-$%^&*()#!~+=]+@([a-z0-9]+\.)+[a-z0-9]{2,3}\.?$
```

<BR>
  
# RegEx Syntax

## Basic topics

### Anchors — ^ and $
|RegEx|Explanation|
|---|---|
|^first       | matches any string that starts with, "first" |
|last$       | matches a string that ends with, "last"|
|^first last$  | exact string match, "first last" (Starts with first and a space, then ends with last)|
|computer       | matches any string that has the text "computer" anywhere in it|

### Quantifiers — * + ? and {}

|RegEx|Explanation|
|---|---|
|xyz*       | matches a string that has "xy" followed by zero or more "z"|
|xyz+       | matches a string that has "xy" followed by one or more "z"|
|xyz?       | matches a string that has "xy" followed by zero or one "z"|
|xyz{2}     | matches a string that has "xy" followed by 2 "z"|
|xyz{2,}    | matches a string that has "xy" followed by 2 or more "z"|
|xyz{2,5}  |  matches a string that has "xy" followed by 2,3,4 or 5 "z"|
|x(yz)*     | matches a string that has "x" followed by zero or more copies of the sequence "yz"|
|x(yz){2,5} | matches a string that has "x" followed by 2 to 5 copies of the sequence "yz"|

### OR operator — | or []

|RegEx|Explanation|
|---|---|
|x(y\|z)     |matches a string that has, "x" followed by "y" or "z"|
|x[yz]      |matches a string that has, 'x" followed by "y" or "z"|
|Character |classes — \d \w \s and .|
|\d         |matches a single character that is a digit|
|\w         |matches a single word character (alphanumeric character plus underscore)|
|\s         |matches a single whitespace character (includes tabs and line breaks)|
|.          |matches any single character|
|\D         |matches a single non-digit character |
|\W         |matches a single non-word character (alphanumeric character plus underscore)|
|\S         |matches a single non-whitespace character (includes tabs and line breaks)|

### To make special charactes literal add a backslash before each special character
#### Special Characters: ^.[$()|*+?{\

|RegEx|Explanation|
|---|---|
|\$\d     |  matches a string that has a $ before one digit|
|\\\\\\\\\w+\\\\\\w+ | matches a shares UNC path name like \\\\server01\\share|

### Non-printable characters: tab \t, new-lines \n, carriage returns \r.

### Flags
|RegEx Flags|Explanation|
|---|---|
|g| (global) does not return after the first match, restarting the subsequent searches from the end of the previous match|
|m| (multi-line) when enabled ^ and $ will match the start and end of a line, instead of the whole string|
|i| (insensitive) makes the whole expression case-insensitive (for instance /aBc/i would match AbC)|

## Intermediate topics

### Grouping and capturing — ()

|RegEx|Explanation|
|---|---|
|x(yz)       |    parentheses create a capturing group with value "yz", <BR> captured data is stored in $1 for the first set of ( ), $2 for the second set of ( ), etc...|
|x(?:yz)*    |    using ?: we disable the capturing group|
|x(?\<groupname>bc) |    using ?\<groupname>, instead of $1 (default capture name) the group can be accessed by $groupname |

### Bracket expressions — []

|RegEx|Explanation|
|---|---|
|[xyz]          |  matches a string that has either an "x" or "y" or "z" -> is the same as x\|y\|z| 
|[x-z]          |  matches a string that has either an "x" or "y" or "z" -> is the same as x\|y\|z|
|[a-fA-F0-9]    |  a string that represents a single hexadecimal digit|
|[0-9]%         |  a string that has a character from 0 to 9 before a "%" sign|
|[^a-zA-Z]      |  a string that has not a letter from "a" to "z" or from "A" to "Z". <BR> In this case the ^ is used as negation of the expression|

### Inside bracket expressions all special characters lose their special character status: thus we will not apply the “escape rule”.

## Greedy and Lazy match

### * + {} are greedy operators.

|RegEx|Explanation|
|---|---|
| <.+?> |            matches any character one or more times included inside < and >, expanding as needed |
| <[^<>]+> |        matches any character except < or > one or more times included inside < and > |

## Advanced topics

### Boundaries — \b and \B

|RegEx|Explanation|
|---|---|
|\bgranny\b        |  performs a "whole words only" search|
|\Bgranny\B       |   matches only if the pattern is fully surrounded by word characters|

### Back-references — \1

|RegEx|Explanation|
|---|---|
|([xyz])\1           |   using \1 it matches the same text that was matched by the first capturing group |
|([xyz])([ab])\2\1   |   we can use \2 (\3, \4, etc.) to identify the same text that was matched by the second (third, fourth, etc.) |


### Capturing group

|RegEx|Explanation|
|---|---|
|(?\<groupname>[xyz])\k\<groupname> |  we put the name foo to the group and we reference it later (\k<foo>). <BR> The result is the same of the first regex|

### Look-ahead and Look-behind — (?=) and (?<=)

|RegEx|Explanation|
|---|---|
|x(?=y)   |    matches "x" only if is followed by "y", but y will not be part of the overall regex match|
|(?<=y)x  |    matches "x" only if is preceded by an "y", but y will not be part of the overall regex match|

### You can use also the negation operator!

|RegEx|Explanation|
|---|---|
|x(?!y)    |   matches "x" only if is not followed by "y", but y will not be part of the overall regex match |
|(?<!y)x   |   matches "x" only if is not preceded by an "y", but y will not be part of the overall regex match |
