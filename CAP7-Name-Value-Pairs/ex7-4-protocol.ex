#Example 7-4. Defining a protocol for valid structures
defprotocol Valid do
  @doc "Returns true if data is considered nominally valid"
  def valid?(data)

end
