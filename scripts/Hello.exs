# ----------- MODULES -----------
defmodule Hello do
  # First function
  def world() do
    IO.puts("Hello Elixir.")
  end

  # second function (available after re-executing "elixirc .\Hello.exs" or "r Hello" in iex)
  # Can be executed with 'Hello.world2("Name")' or 'Hello.world2 "Name"'
  def world2(name) do
    IO.puts("Hello #{name}.")
  end
end

# ----------- FUNCTIONS -----------
Hello.world()
Hello.world2("Name")

# ----------- COMMANDS -----------
# elixir .\Hello.exs
# elixirc .\Hello.exs -> Will compile and create 'beam' file 'Elixir.Hello.beam'
# c "Hello.exs" -> will create beam file via interactive elixir shell
