# Datatype Charlist
## Syntax
 ```
 'abcdef'
 ```
A charlist must always be specified with single quotes.

## The what...?
A charlist is a list consisting of several characters.

## Examples:
For the below examples, go into the IEX and execute the commands.

### 1: Specify charlist
We specify a charlist like this:
```
chars = 'abcdef'
# output: ~c"abcdef"
```
Now when we check it using the ```i``` function, we get the following result:
```
iex(5)> i chars
Term
  ~c"abcdef"
Data type
  List
Description
  This is a list of integers that is printed using the `~c` sigil syntax,
  defined by the `Kernel.sigil_c/2` macro, because all the integers in it
  represent printable ASCII characters. Conventionally, a list of Unicode
  code points is known as a charlist and a list of ASCII characters is a
  subset of it.
Raw representation
  [97, 98, 99, 100, 101, 102]
Reference modules
  List
Implemented protocols
  Collectable, Enumerable, IEx.Info, Inspect, List.Chars, String.Chars
```

Please note how the Data type is now a ```List```, while for the String it is a ```Binary String``` or ```BitString```.

### 2: Concat Charlists
```
chars = 'abcdef'
'Hello ' ++ chars
```
The above command wil result in a concatted Charlist looking like this: ```'Hello abcdef'``` of type "List".

Using the built in function ```is_list``` we can evaluate whether our charlist is a list - which in this case will return the value ```true```.