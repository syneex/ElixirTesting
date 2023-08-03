# Datatype String
## Syntax
```
"String"
```
A string must always be stated with double quotes. If it would be specified with single quotes ```'String'```, it represents a character list.

## The what...?
Similar to Strings in other languages, Strings in Elixir represent a word - a connection of several letters that combine to a full phrase or meaning.

## Examples:
For the below examples, go into the IEX and execute the commands.

### 1: Specify string
Just type in a string in the iex and it will return the value that you stated within the double quotes.
```
"String"
```
### 2: Determining Data type and binary values
In order to determine data types, we can utilize built in functions:
If you put the following snippet in the IEX:
```
i("String")
```
you will receive:
```
Term
  "String"
Data type
  BitString
Byte size
  6
Description
  This is a string: a UTF-8 encoded binary. It's printed surrounded by
  "double quotes" because all UTF-8 encoded code points in it are printable.
Raw representation
  <<83, 116, 114, 105, 110, 103>>
Reference modules
  String, :binary
Implemented protocols
  Collectable, IEx.Info, Inspect, List.Chars, String.Chars
```

You can see that right now, we are having a byte string. In the section "Raw representation" you see the actual byte numbers (UTF-8 Mode ["One Latin char per byte"](https://www.utf8-chartable.de/unicode-utf8-table.pl?utf8=dec)) of each character. If you want to find out the byte number for each char, simply execute
```?{Char}``` in your IEX. For Example:
```
?a
```
will return 97.<br><br>
We can also check if the string is a binary:
```
name = "Max"
is_binary name
is_binary(name)
```
This will return ```true```.
### 3: String concat
You can concat strings easily like this:
```
name = "Max"
msg = "Hello " <> name
```

### 4: Pattern Matching
#### Extract values from Strings, Pattern Matching on Strings
To extract a sub string from a string, we first need to create the string. As we are pattern matching immutable values in Elixir, we first need to set the message
```
name = "Max"
msg = "Hello " <> name

# msg = "Hello Max"
"Hello " <> subString = msg
subString

# subString = "Max"
```

#### Pattern Matching on raw representation
We are able to match Strings against their raw representation:
```
<<97,98,99>> = "abc"
```
will return ```"abc"```. While 

```
<<97,98,100>> = "abc"
```
will return an error as the last byte number is not matching the character 'c'.
```
** (MatchError) no match of right hand side value: "abc"
    (stdlib 5.0.2) erl_eval.erl:498: :erl_eval.expr/6
    iex:18: (file)
```
<br>

Also we can store a first character in a separate value:
```
<<head, rest::binary>> = "abc"
head
```
this will display "97" -> the byte value for 'a'. We can also evaluate this in the code:
```
head == ?a
```

We can also pattern match directly to store the rest into a variable:
```
<< "ab", rest::binary >> = "abcde"
```
now the variable "rest" holds "cde".

We can do the same with a variable as well, stating the binary size:
```
<<head::binary-size(2), rest::binary>> = "abcdef"
```
now ```head``` holds "ab" and ```rest``` holds "cdef".