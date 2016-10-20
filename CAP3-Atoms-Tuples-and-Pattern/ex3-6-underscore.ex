#Example 3-6. Deliberately ignoring an argument with an underscore
defmodule Drop2 do

  def fall_velocity(_, distance) when distance >=0 do
    :math.sqrt(2 * 9.8 * distance)
  end

end
