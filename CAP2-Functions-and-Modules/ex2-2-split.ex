#Example 2-2. Module for calculating fall velocities
defmodule Drop do
  def fall_velocity(distance) do
    :math.sqrt(2 * 9.8 * distance)
  end
end
