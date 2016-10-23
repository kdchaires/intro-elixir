#Example 9-1. an overly simple process definition
defmodule Bouce do
  def report do
    receive do
      msg -> IO.puts("Received #{msg}")
    end
  end
end
