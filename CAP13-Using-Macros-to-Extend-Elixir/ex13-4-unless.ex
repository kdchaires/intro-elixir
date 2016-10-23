#Example 13-4. Creating a macro to implement the unless construct
defmodule Logic do
  defmacro unless(condition, options) do
    quote do
      if(!unquote(condition), unquote(options))
    end
  end
 end
