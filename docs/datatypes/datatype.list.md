# Datatype List
## Syntax
```
[object, object]
```
A list needs to be stored in brackets.

## The what...?
Lists in Elixir is a collection of objects inside one variable. Be aware, that lists in elixir are Linked lists, which means that operations like indexing are not possible.

## Examples:
For the below examples, go into the IEX and execute the commands.

### 1: Create List
This creates a list of strings:
```
list = ["a", "b", "c"]
```

To prove that this is a linked list and that indexing is not possible, here is a little experiment. I want to try to access the first element of the above list:

```
list[0]
```

This expression will result in the following error:
```
** (ArgumentError) the Access calls for keywords expect the key to be an atom, got: 0
    (elixir 1.15.4) lib/access.ex:330: Access.get/3
    iex:18: (file)
```

Now how do we get the element we want? Using the built in module ```Enum```.
```
Enum.at(list, 0)
```

When checking out all available functions for one built in module, we can simply type in ```Enum.``` inside the IEX, press tab, and then we will get all available methods:
```
iex(20)> Enum.
all?/1               all?/2               any?/1               any?/2               at/2                 at/3
chunk_by/2           chunk_every/2        chunk_every/3        chunk_every/4        chunk_while/4        concat/1
concat/2             count/1              count/2              count_until/2        count_until/3        dedup/1
dedup_by/2           drop/2               drop_every/2         drop_while/2         each/2               empty?/1
EmptyError           fetch!/2             fetch/2              filter/2             find/2               find/3
find_index/2         find_value/2         find_value/3         flat_map/2           flat_map_reduce/3    frequencies/1
frequencies_by/2     group_by/2           group_by/3           intersperse/2        into/2               into/3
join/1               join/2               map/2                map_every/3          map_intersperse/3    map_join/2
map_join/3           map_reduce/3         max/3                max_by/2             max_by/4             member?/2
min/3                min_by/2             min_by/4             min_max/1            min_max/2            min_max_by/2
min_max_by/4         OutOfBoundsError     product/1            random/1             reduce/2             reduce/3
reduce_while/3       reject/2             reverse/1            reverse/2            reverse_slice/3      scan/2
scan/3               shuffle/1            slice/2              slice/3              slide/3              sort/1
sort/2               sort_by/2            sort_by/3            split/2              split_while/2        split_with/2
sum/1                take/2               take_every/2         take_random/2        take_while/2         to_list/1
uniq/1               uniq_by/2            unzip/1              with_index/1         with_index/2         zip/1
zip/2                zip_reduce/3         zip_reduce/4         zip_with/2           zip_with/3
```

Speaking of the helper functions, we can also use ```h Enum.at``` to get the documentation of the function "at" in Module "Enum".

### 2. Pattern Matching within our list
In order to extract values from a list, we can execute a statement like this:
```
[first, second, third] = [ "a", "b", "c"]
```
Now when we call any of the variables specified on the left side, we get its corresponding counterpart.
```
first
# output: "a"
```

If we only want the last value of a list we can use an ```_``` to ignore values:
```
[_, _, third] = [ "a", "b", "c"]
```
Now lets say we want to extract the first value of the given array, we could use the built in function ```hd``` - head:
```
hd([ "a", "b", "c"])
# output: "a"
```
The built in function ```tl``` return the tail of a list - so all elements without the first one:
```
tl([ "a", "b", "c"])
# output: ["b", "c"]
```

I can also store the values of both kinds (first object and remaining objects) into separate variables using the ```|``` operator (Cons Operator):
```
[ h | l ] = ([ "a", "b", "c"])
# output h: "a"
# output l: ["b", "c"]
```