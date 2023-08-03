# Datatype Process
## The what...?
As Elixir runs in processes, we can also use a process datatype inside our code. Processes are identified via their PID (Process ID).

## Examples:
For the below examples, go into the IEX and execute the commands.

### 1: Identify current process
To identify the current process, we can utilize the built in function "self"
```
my_pid = self()
```
this will return ```#PID<0.109.0>```. 