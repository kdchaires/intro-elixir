#Example 2-6. Module for combining drop and convert logic, with imported Convert
defmodule Combined do
  import Convert

  def height_to_mph(meters) do
    mps_to_mph(Drop.fall_velocity(meters))
  end
end
