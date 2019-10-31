# Good RegEx Urls


[RegEx Tutorial](https://medium.com/factory-mind/regex-tutorial-a-simple-cheatsheet-by-examples-649dc1c3f285) <BR>
[RegEx Cookbook](https://medium.com/factory-mind/regex-cookbook-most-wanted-regex-aa721558c3c1) <BR>
[RegEx Testing Playpen](https://regex101.com) <BR>
[RegEx Complete Guide](https://www.regular-expressions.info/) <BR>
[RegEx CheetSheet](https://www.cheatography.com/davechild/cheat-sheets/regular-expressions/) <BR>


# Interesting RegEx Strings
NB: I have developed these just to fill a need, if you have a better way to do these I would love to hear about it.
<BR>


### Match a valid IP Address from 1.1.1.1 to 223.255.255.255 (Class A - Class C, Valid Addresses)

```
^(1[0-9]?[0-9]?|2[0-1][0-9]|22[0-3]|[2-9][0-9]?)\.((1[0-9]?[0-9]?|2[0-1][0-9]|2[2-5][0-5]|[2-9][0-9]?)\.){2}(1[0-9]?[0-9]?|2[0-1][0-9]|2[2-5][0-5]|[2-9][0-9]?)$
```

### Match an IP Address from Class C only

```
^(19[2-9]|2[0-2][0-3])(\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-5][0-5])){3}$
```

### Match email addresses 
#### (Not sure if the trailing period is required for some FQ Email Addresses)

```
^[a-z0-9][a-z0-9._\-$%^&*()#!~+=]+@([a-z0-9]+\.)+[a-z0-9]{2,3}\.?$
```

<BR>
  
# RegEx Syntax
Each character in the RegEx pattern (string) matches one character unless it has a quantifier after it, quantifiers can be very specific or very general. RegEx patterns can match any where in a givien string of characters, without anchors in the RegEx string the match coul be at the start, at the end or even in the middle of the matching string.

## Basic topics

### Anchors — ^ and $
These do not match any data, they are in fact to dictate where the match should be found

|RegEx|Explanation|
|---|---|
|^first       | matches any string that starts with, "first" |
|last$       | matches a string that ends with, "last"|
|^first last$  | exact string match, "first last" (Starts with first and a space, then ends with last)|
|computer       | matches any string that has the text "computer" anywhere in it|

### Quantifiers — * + ? and {}
These multiply the previous RegEx character or character group by 0 or 1 or More depending on which quantifier was used in the RegEx pattern.

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
OR can be performed in two ways, we tend to use the ( \| ) when there are character sets involved in the OR and we use \[ \] when we are ORing individual characters 

|RegEx|Explanation|
|---|---|
|x(bob\|ben)     |matches a string that has, "x" followed by "bob" or "ben"|
|x[yz]      |matches a string that has, 'x" followed by "y" or "z"|

### Character classes — \d \w \s and .
By themselves these match one character only, generally the UPPERCASE form means a logic reverse to the lowercase class.
. matches any character except newline, this can prove problematic if you are trying to match a literal . in this case you will need to quote the . with a backslash infront of it to remove it's special meaning (this is dicussed in the next section) 

|RegEx|Explanation|
|---|---|
|\d         |matches a single character that is a digit|
|\w         |matches a single word character (alphanumeric character plus underscore)|
|\s         |matches a single whitespace character (includes tabs and line breaks)|
|.          |matches any single character|
|\D         |matches a single non-digit character |
|\W         |matches a single non-word character (alphanumeric character plus underscore)|
|\S         |matches a single non-whitespace character (includes tabs and line breaks)|

### To make special charactes literal add a backslash before each special character <BR> Special Characters: ^.[$()|*+?{\

|RegEx|Explanation|
|---|---|
|\\$\d     |  matches a string that has a $ before one digit|
|\\\\\\\\\w+\\\\\\w+ | matches a shares UNC path name like \\\\server01\\share|

### Non-printable characters

|RegEx|Explanation|
|---|---|
|\t|Tab|
|\n|New-Line|
|\r|Carriage Return (ENTER)|

### Flags
|RegExFlags|Explanation|
|---|---|
|g| (global) does not stop after the first match, continues on searching|
|m| (multi-line) when enabled ^ and $ will match the start and end of a line, instead of the whole string|
|i| (insensitive) makes the whole expression case-insensitive (for instance /aBc/i would match AbC)|

## Intermediate topics

### Grouping and capturing — ()

|RegEx|Explanation|
|---|---|
|x(yz)       |    parentheses create a capturing group with value "yz", <BR> captured data is stored in $1 for the first set of ( ), $2 for the second set of ( ), etc...|
|x(?:yz)*    |    using ?: we disable the capturing group|
|x(?\<group\>bc) |    using ?\<group\>, instead of $1 (default capture name) the group can be accessed by $group |

### Bracket expressions — []

|RegEx|Explanation|
|---|---|
|[xyz]          |  matches a string that has either an "x" or "y" or "z" -> is the same as x\|y\|z| 
|[x-z]          |  matches a string that has either an "x" or "y" or "z" -> is the same as x\|y\|z|
|[a-fA-F0-9]    |  a string that represents a single hexadecimal digit|
|[0-9]%         |  a string that has a character from 0 to 9 before a "%" sign|
|[^a-zA-Z]      |  a string that has not a letter from "a" to "z" or from "A" to "Z". <BR> In this case the ^ is used as negation of the expression|

__*Inside bracket expressions all special characters lose their special character status: no need to add \ to escape character.*__

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
|([xyz])\\1           |   using \1 it matches the same text that was matched by the first capturing group |
|^\d{1,3}\\.\d{1,3}\\.\\1\\.\\2   |   Matching an IP address where the first and third octets are the same <BR> and the second and fourth octets are the same |


### Named Capturing group

|RegEx|Explanation|
|---|---|
|(?\<group>[xyz])\k\<group> |  we put the name "group" to the capturing-group and we reference it later (\k<group>). <BR> The result is the same of the first regex|

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
