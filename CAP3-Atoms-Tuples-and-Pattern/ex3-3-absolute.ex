#Example 3-3. Calculating absolute value with guards
defmodule MathDemo do
  def absolute_value(number) when number < 0 do
    -number
  end

  def absolute_value(number) when number == 0 do
    0
  end

  def absolute_value(number) when number > 0 do
    number
  end
end
