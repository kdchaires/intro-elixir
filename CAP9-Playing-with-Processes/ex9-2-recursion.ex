#Example 9-2. fuction that creates a stable process
defmodule Bouce do
  def report do
    receive do
      msg -> IO.puts("Receive #{msg}")
      report()
    end
  end
end
