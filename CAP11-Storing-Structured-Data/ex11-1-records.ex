#Example 11-1. A records.ex file containing two rather unrelated record declarations
defmodule Planemo do
  require Record
  Record.defrecord :planemo, [name: :nil, gravity: 0, diameter: 0,
  distance_from_sun: 0]
end

defmodule Tower do
  require Record
  Record.defrecord :tower, Tower,
    [location: "", height: 20, planemo: :earth, name: ""]
end
