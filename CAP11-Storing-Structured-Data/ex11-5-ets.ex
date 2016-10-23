#Example 11-5. Setting up a simple ETS table and reporting on what’s there
defmodule PlanemoStorage do
  require Planemo

  def setup do
    planemo_table = :ets.new(:planemos,[:named_table,
      {:keypos, Planemo.planemo(:name) + 1}])
    :ets.info planemo_table
  end
 end
