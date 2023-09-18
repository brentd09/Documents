# Good RegEx Urls

### Great RegEx testing tools
[RegExr](https://regexr.com) <BR>
[RegEx 101](https://regex101.com) <BR>

### Tutorials
[RegEx Tutorial](https://medium.com/factory-mind/regex-tutorial-a-simple-cheatsheet-by-examples-649dc1c3f285) <BR>
[RegEx Cookbook](https://medium.com/factory-mind/regex-cookbook-most-wanted-regex-aa721558c3c1) <BR>
[RegEx Complete Guide](https://www.regular-expressions.info/) <BR>
[RegEx CheetSheet](https://www.cheatography.com/davechild/cheat-sheets/regular-expressions/) <BR>
[RegEx Step by step Tutorial](https://regexone.com/)<BR>
[RegEx Railroad Diagrams](https://regexper.com/) <BR> 

# What are Regular Expressions

<p>
  Regular Expression or RegEx for short is a system for searching, matching and modifying text. RegEx has syntax rules that 
  describe what text to match and this is called a RegEx pattern.  
  
  Some of the rules of the syntax are shown below. 
  
  One important thing to understand regarding RegEx is that it searches for the left to the right in a string of characters 
  looking for a match by comparing each letter of the string with the first character class of the pattern. 
  
  If the first character matches the current character in the string, Regex considers this to be a potential
  match and so it then checks the next character in the string with the second character of the pattern and so on until
  it either matches the entire pattern (confirmed match) or it fails to match the whole pattern. 
  
  If it fails to match the entire pattern, RegEx backtracks to the letter after the potential match and begins again to 
  match this character with the first letter of the pattern (starting the search process again from this next letter)
</p>

## This demonstration shows how regex works for standard matching

#### Regex pattern = conv

#### The string that is being matched = The critically concerned canary chirped loudly as it was conveyed into the mine shaft
<br><br><br>

| | | | | | | | | | | | | | | | | | | | | | | | | | | |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
|T|h|e| |c|r|i|t|i|c|a|l|l|y| |c|o|n|c|e|r|n|e|d| |c|a|
|c| | | | | | | | | | | | | | | | | | | | | | | | | | | 

### c (from conv) does not match T so regex tries the next character

<br>

| | | | | | | | | | | | | | | | | | | | | | | | | | | |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
|T|h|e| |c|r|i|t|i|c|a|l|l|y| |c|o|n|c|e|r|n|e|d| |c|a|
| |c| | | | | | | | | | | | | | | | | | | | | | | | | | 

### c does not match h so regex tries the next character

<br>

| | | | | | | | | | | | | | | | | | | | | | | | | | | | 
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
|T|h|e| |c|r|i|t|i|c|a|l|l|y| |c|o|n|c|e|r|n|e|d| |c|a|
| | |c| | | | | | | | | | | | | | | | | | | | | | | | | 

### c does not match e so regex tries the next character


<br>

| | | | | | | | | | | | | | | | | | | | | | | | | | | |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
|T|h|e| |c|r|i|t|i|c|a|l|l|y| |c|o|n|c|e|r|n|e|d| |c|a|
| | | |c| | | | | | | | | | | | | | | | | | | | | | | |

### c does not match [SPACE] so regex tries the next character


<br>

| | | | | | | | | | | | | | | | | | | | | | | | | | | |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
|T|h|e| |c|r|i|t|i|c|a|l|l|y| |c|o|n|c|e|r|n|e|d| |c|a|
| | | | |c| | | | | | | | | | | | | | | | | | | | | | | 

### c does match c, this is considered a potential match

### so regex tries to match the second character of the pattern with the next character of the string


<br>

| | | | | | | | | | | | | | | | | | | | | | | | | | | | 
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
|T|h|e| |c|r|i|t|i|c|a|l|l|y| |c|o|n|c|e|r|n|e|d| |c|a|
| | | | |c|o| | | | | | | | | | | | | | | | | | | | | | 

### c and o (from conv) do not match the c and r, so regex backs up to the next character after the c in the string

<br>

| | | | | | | | | | | | | | | | | | | | | | | | | | | |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
|T|h|e| |c|r|i|t|i|c|a|l|l|y| |c|o|n|c|e|r|n|e|d| |c|a|
| | | | | |c| | | | | | | | | | | | | | | | | | | | | |


### c does not match r so regex tries the next character

<br>


| | | | | | | | | | | | | | | | | | | | | | | | | | | |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
|T|h|e| |c|r|i|t|i|c|a|l|l|y| |c|o|n|c|e|r|n|e|d| |c|a|
| | | | | | |c| | | | | | | | | | | | | | | | | | | | |

### c does not match i so regex will keep trying

<br>

### Later, when testing the word 'concerned'


| | | | | | | | | | | | | | | | | | | | | | | | | | | |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
|T|h|e| |c|r|i|t|i|c|a|l|l|y| |c|o|n|c|e|r|n|e|d| |c|a|
| | | | | | | | | | | | | | | |c| | | | | | | | | | | |

### c (from conv) does match c so regex tries to match the second char in the pattern


<br>


| | | | | | | | | | | | | | | | | | | | | | | | | | | | 
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
|T|h|e| |c|r|i|t|i|c|a|l|l|y| |c|o|n|c|e|r|n|e|d| |c|a|
| | | | | | | | | | | | | | | |c|o| | | | | | | | | | |

### c and o match c and o so regex tries to match the third char in the pattern


<br>

| | | | | | | | | | | | | | | | | | | | | | | | | | | |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
|T|h|e| |c|r|i|t|i|c|a|l|l|y| |c|o|n|c|e|r|n|e|d| |c|a|
| | | | | | | | | | | | | | | |c|o|n| | | | | | | | | | 

### c, o and n  match c and o and n so regex tries to match the fourth char in the pattern


<br>

| | | | | | | | | | | | | | | | | | | | | | | | | | | |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
|T|h|e| |c|r|i|t|i|c|a|l|l|y| |c|o|n|c|e|r|n|e|d| |c|a|
| | | | | | | | | | | | | | | |c|o|n|v| | | | | | | | |

### v does not match c so regex backtracks to the letter o as the next character in the word concerned


<br>

| | | | | | | | | | | | | | | | | | | | | | | | | | | |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
|T|h|e| |c|r|i|t|i|c|a|l|l|y| |c|o|n|c|e|r|n|e|d| |c|a|
| | | | | | | | | | | | | | | | |c| | | | | | | | | | |

### c does not match o so regex will try the next character and so on.

---

### Now we will look at this process further along the string

| | | | | | | | | | | | | | | | | | | | | | | | | | | |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
|a|s| |i|t| |w|a|s| |c|o|n|v|e|y|e|d| |i|n|t|o| |t|h|e|
| | | | | | | | | | |c| | | | | | | | | | | | | | | | |

### When matching the word conveyed, c (from conv) matches the c in conveyed so the second letter of the pattern is tried

| | | | | | | | | | | | | | | | | | | | | | | | | | | |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
|a|s| |i|t| |w|a|s| |c|o|n|v|e|y|e|d| |i|n|t|o| |t|h|e|
| | | | | | | | | | |c|o| | | | | | | | | | | | | | | |

### c and o (from the pattern) match c and o from the string, so the third letter is tried


| | | | | | | | | | | | | | | | | | | | | | | | | | | |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
|a|s| |i|t| |w|a|s| |c|o|n|v|e|y|e|d| |i|n|t|o| |t|h|e|
| | | | | | | | | | |c|o|n| | | | | | | | | | | | | | |

### c,o and n (from the pattern) match c, o and n from the string, so the fourth letter is tried


| | | | | | | | | | | | | | | | | | | | | | | | | | | |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
|a|s| |i|t| |w|a|s| |c|o|n|v|e|y|e|d| |i|n|t|o| |t|h|e|
| | | | | | | | | | |c|o|n|v| | | | | | | | | | | | | |

### c, o, n and v (from the pattern) match c, o, n and v from the string

> **Because the entire pattern is matched this is considered a match**



<br>


<br>

# Interesting RegEx Patterns

<BR>


### Match a valid IP Address from 1.1.1.1 to 223.255.255.255 (Class A - Class C, Valid Addresses)

```
^([1-9]|[1-9][0-9]|1[01][0-9]|12[0-6]|12[89]|1[3-9][0-9]|2[0-2][0-3])(\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])){3}$
```

### Match an IP Address from Class C only

```
^(19[2-9]|2[0-2][0-3])(\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])){3}$
```
<br>

### Match a valid email address

```
^[[a-zA-Z]([a-zA-Z0-9!#$&%'*+?=^_`{|.\/-]){1,62}@[a-zA-Z][a-zA-Z09]{1,62}(\.[a-zA-Z][a-zA-Z09]{1,62})+$
```




# RegEx Syntax
Each character in the RegEx pattern (string) matches one character unless it has a quantifier after it, quantifiers can be very specific or very general. RegEx patterns can match anywhere in a given string of characters, without anchors in the RegEx pattern the match could be at the start, at the end or even in the middle of the matching string.

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
By themselves these match one character only, generally, the UPPERCASE form means a logic reverse to the lowercase class.
.(dot) matches any character except newline, this can prove problematic if you are trying to match a literal . in this case, you will need to quote the . with a backslash in front of it to remove its special meaning (this is discussed in the next section) 

|RegEx|Explanation|
|---|---|
|\d         |matches a single character that is a digit|
|\w         |matches a single word character (alphanumeric character plus underscore)|
|\s         |matches a single whitespace character (includes tabs and spaces)|
|.          |matches any single character|
|\D         |matches a single non-digit character |
|\W         |matches a single non-word character (alphanumeric character plus underscore)|
|\S         |matches a single non-whitespace character (includes tabs and spaces)|

### To make special characters literal add a backslash before each special character <BR> Special Characters: ^.[$()|*+?{\

|RegEx|Explanation|
|---|---|
|\\$\d     |  matches a string that has a $ before one digit|
|\\\\\\\\\w+\\\\\\w+ | matches a share's UNC path name like \\\\server01\\share|

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
Capturing data can be useful for many reasons in RegEx, you may want to find and replace data using capturing and the RegEx Replace function, you may also capture data to apply a quantifier to a whole character set, etc.

|RegEx|Explanation|
|---|---|
|x(yz)       |    parentheses create a capturing group with value "yz", <BR> captured data is stored in $1 for the first set of ( ), $2 for the second set of ( ), etc...|
|x(?:yz)*    |    using ?: we disable the capturing group|
|x(?\<group\>yz) |    using ?\<group\>, instead of $1 (default capture name) the group can be accessed by $group |
|\(\?\:xyz\) | This will group but NOT capture the data. <BR> example:\(?\<firstname\>givenname\)\\s+\(\?\:Middlename\)\\s+\(\?\<surname\>Surname\) |

### Bracket expressions — []
Like character classes the entire \[ \] structure matches only one character, but this limits which characters will match 

|RegEx|Explanation|
|---|---|
|[xyz]          |  matches a string that has either an "x" or "y" or "z" -> is the same as x\|y\|z| 
|[x-z]          |  matches a string that has either an "x" or "y" or "z" -> is the same as x\|y\|z|
|[a-fA-F0-9]    |  a string that represents a single hexadecimal digit|
|[0-9]%         |  a string that has a character from 0 to 9 before a "%" sign|
|[^a-zA-Z]      |  a string that does not have a letter from "a" to "z" or from "A" to "Z". <BR> In this case the ^ is used as negation of the expression|

__*Inside bracket expressions all special characters lose their special character status: no need to add \ to escape character.*__

## Greedy and Lazy match

### * + {} are greedy operators.
By default quantifiers are greedy, which means they will try to find the maximum amount of data to match from a string, this may not be useful as you may have repeated structures in the string where you want to capture just one instance of a repeated string. 
Take for example this HTML string \<html\>\<head\>\<\/head\>\<body\>This is a website\<\/body\>\<\/html\> matching '<.\*>' will capture the entire string \(Greedy\). To force the quantifier to be (Lazy) use the following RegEx pattern '<.\*?>' now the first match will be \<html\> only.

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
These allow you to use captured data as subsequent matches to see if duplicated data exists in the test string

|RegEx|Explanation|
|---|---|
|([xyz])\\1           |   using \1 it matches the same text that was matched by the first capturing group |
|^\d{1,3}\\.\d{1,3}\\.\\1\\.\\2\$  |   Matching an IP address where the first and third octets are the same <BR> and the second and fourth octets are the same |


### Named Capturing group
The default capturing groups data are stored in $1 $2 $3 etc based on the number of \( \) capturing groups you have in the RegEx 
pattern, to make it easier to locate captured data you can override the default names by explicitly naming each capture group then instead of $1 you would use $GroupName.

|RegEx|Explanation|
|---|---|
|(?\<group>[xyz])\k\<group> |  we put the name "group" to the capturing group and we reference it later (\k<group>). <BR> The result is the same as the first regex|

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

<br>
<br>

# Powershell examples with Regex

## RegEx Replace
 
### You can use RegEx to replace strings

|RegEx|Explanation|
|---|---|
|'Dowe, John' -Replace '^(\[a-z]+),\s+(\[a-z]+)$','$2 $1'    |   The result will be John Dowe, this captures the surname in the first capture brackets and the given name in the second capture brackets and then returns them in the opposite order with a space between them |
|'The Dog was sold for 23.56' -replace 'The\s+([a-z]+)\s.+(\d+\\.\d\d)','$1 $$$2' | The result will be Dog $23.56, the $$ is code for escaping a $ sign which will appear before the money value $2|

## RegEx Split 

|RegEx|Explanation|
|---|---|
|'123.4.5.32' -Split '\\.'| The result will be an array of 4 strings @('123','4','5','32'). The backslash dot \\. is to escape the dot character as literal|
