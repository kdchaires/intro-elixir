#Example 4-9. A factorial written with the counting-down approach
defmodule Fact do
  def factorial(n) when n > 1 do
    n * factorial(n-1)
  end

  def factorial(n) when n<=1 do
    1
  end

end
