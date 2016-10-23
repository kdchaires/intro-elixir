#Example 9-3. A function that adds a counter ts messages reporting
defmodule Bounce do
  def report(count) do
    receive do
      msg ->IO.puts("Receive #{count}: #{msg}")
      report(count + 1)
    end
  end
end
