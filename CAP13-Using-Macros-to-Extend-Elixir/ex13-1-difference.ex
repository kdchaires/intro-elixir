#Example 13-1. Showing the difference between function and macro calls
defmodule Difference do
  defmacro m_test(x) do
    IO.puts("#{inspect(x)}")
    x
  end

  def f_test(x) do
    IO.puts("#{inspect(x)}")
    x
  end
 end
