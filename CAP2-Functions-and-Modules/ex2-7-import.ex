#Example 2-7. Importing the Erlang math module.
defmodule Drop do
  import :math, only: [sqrt: 1]

  def fall_velocity(distance, gravity) do
    sqrt(2 * gravity * distance)
  end
end
