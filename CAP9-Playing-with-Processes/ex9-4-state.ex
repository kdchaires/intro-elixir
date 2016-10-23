#Example 9-4. Using the return calue of the recive clause as sattet for the next iteration
defmodule Bounce do
  def report(count) do
    new_count = receive do
      msg -> IO.puts("Received #{count}: #{msg}")
      count + 1
    end
    report(new_count)
  end
end
