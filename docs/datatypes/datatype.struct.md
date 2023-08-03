# Datatype Struct
## Syntax
```
defmodule User do
  defstruct username: "", email: "", age: nil
end
```
A struct is defined with the macro ```defstruct``` and can be initialized with atoms and/or empty values. To call it, we can use a similar notation as the Map notation. The only difference is, that we need to pass the name of the Struct: ```%User{username: "Max", age: 24, email: "max.mustermann@blabla.de"}```

## The what...?
Structs is a tagged map that allows to provide default values for keys. Structs are defined in Modules. Structs are very similar to maps and we can use the same pattern matching strategies on them.

## Examples:
For the below examples, go into the IEX and execute the commands.

### 1: Initialize new Struct
When we want to create a new User Struct, we can use the following syntax:
```
# create struct
defmodule User do
  defstruct username: "", email: "", age: nil
end

# init struct
user1 = %{ username: "maxie", email: "max.mustermann@blabla.de", age: 24 }
```

### 2: Pattern matching a struct
Similar to the Maps, we can pattern match specific properties of one struct:
```
user1 = %{ username: "maxie", email: "max.mustermann@blabla.de", age: 24 }
%{username: username} = user1
username

# output username: "maxie"
```

### 3: Update age in User Struct
Also similar to the approach in the maps, we can use the ```|``` Cons operator to update a certain property:
```
user1 = %{ username: "maxie", email: "max.mustermann@blabla.de", age: 24 }
%{age: age} = user1
age

# output username: 24
user1 = %{user1 | age: 28}
%{age: age} = user1
age
```