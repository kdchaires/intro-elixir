#Example 8-1. An extremely simple higher-order function
defmodule Hof do
  def tripler(value, function) do
    3 * function.(value) end
end
