#Example 13-3. Using quote to create a macro
defmodule Double do
  defmacro double(x) do
    quote do
      2 * unquote(x)
    end
  end
 end
