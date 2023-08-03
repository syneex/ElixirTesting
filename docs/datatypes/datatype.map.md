# Datatype Map
## Syntax
```
%{a: 1, b: 2, c: 3}
```
Similar to tuples, we are creating maps using curly brackets. The difference is that we need to write a percentage symbol in the beginning.

## The what...?
Maps are the "go to" key-value data structure in Elixir. They do not follow any specific order. Maps do not allow duplicated keys. But anything can be a key in a map. 

## Examples:
For the below examples, go into the IEX and execute the commands.

### 1: Pattern Match Map
To store the map in variables we can use the following structure:
```
my_map = %{a: 1, b: 2, c: 3}
%{a: first, b: second, c: third} = my_map
# output: %{c: 3, a: 1, b: 2}
# output first: 1
# output second: 2
# output third: 3
```

We do not need to specify all the variables for a complete map. We can also use single ones:
```
my_map = %{a: 1, b: 2, c: 3}
%{b: second} = my_map

# output second: 2
```

We can also use another notation if the key is not a string:
```
my_map = %{a: 1, b: 2, c: 3}
my_map.a

# output: 1
```

### 2: Using Strings as keys
when we are not using atoms but strings as a key in maps, we need to use a different notation:
```
my_map2 = %{ "a" => 1, "b" => 2, "c" => 3 }
```
Now when we retrieve the value, we just need to formulate the key as a string:
```
my_map2 = %{ "a" => 1, "b" => 2, "c" => 3 }
%{ "a" => a } = my_map2

# output a: 1
```

### 3: Update Value in Map
We can overwrite certain values in our map with the following statement:
```
my_map2 = %{ "a" => 1, "b" => 2, "c" => 3 }
my_map2 = %{my_map2 | "c" => 4}
```