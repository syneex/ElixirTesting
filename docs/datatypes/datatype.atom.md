# Datatype Atom
## Syntax
```
:some_name
```
Atoms can be stated like above or like this:
```
:"Some Name"
```
if they contain whitespaces in their name.

## The what...?
An Atom is an object where the name represents the value. Atoms are very heavily used for pattern matching.

## Examples:
For the below examples, go into the IEX and execute the commands.

### 1: Error messages
When we would encounter an error in our application, we could use atoms to display those.
```
:error
```
or we could include the error message using a Elixir Tuple:
```
{:elixir, "file not found"}
```
<br>
We can also use this kind of setup for pattern matching and error handling to check if a given error is of the same kind:

```
{:error, reason} =  {:error, "file not found"}
reason
```

### 2: pattern matching on successfull HTTP requests
Now we suppose that we have a successful execution of an http call, returning a 200 status code:

```
{:ok, msg} =  {:ok, "status 200 ok"}
msg
```