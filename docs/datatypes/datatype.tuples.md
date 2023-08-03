# Datatype Tuples
## Syntax
```{1, 2}``` - Tuples must be created in curly brackets. recommended to use lists.

## The what...?
Tuples are very similar to classical arrays. Tuples should only be used for smaller objects, while for larger objects its recommended to go with a list.

## Examples:
For the below examples, go into the IEX and execute the commands.

### 1: Create Tuples
```
{a,b} = {1,2}
```
### 2: Pattern matching using Tuples:
Its pretty common to have a tuple used for validating responses from a server. Here is an example of that:
```
{:reply, msg, state} = {:reply, "Orders found!", ["00762536", "001263898", "001276416"]}
# output msg: "Orders found!"
# output state: ["00762536", "001263898", "001276416"]
```