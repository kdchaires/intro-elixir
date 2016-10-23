#Example 13-2. A manually-created macro
defmodule Double do
  defmacro double x do
    {:*, [], [2, x]}
  end
 end
