# Datatype Keyword List
## Syntax
```
[a: 1, b: 2]
```
Keyword Lists should be maintained like usual lists, with the difference, that before the actual value we write an identifier, separated with a colon. Please be aware that the keyword must be followd by a space.

## The what...?
A keyword list is actually a list, with the difference that we have a key to identify our values. The key-value pair is actually saved as a tuple inside the keyword list.

## Examples:
For the below examples, go into the IEX and execute the commands.

### 1: Create Keyword List
```
data = [a:1, b:2]
#output: [a: 1, b: 2]
```
Showcase that each Key value object is actually a Tuple:
```
[{:a, 1}] = [a: 1]
```

Please note how the key is always stored as an atom in the background.
To access the values inside the Keyword list, we can use the built in module ```Keyword```:
```
data = [a:1, b:2]
data[:a]
#output: 1
```