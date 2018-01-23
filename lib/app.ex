defmodule App do

  def hello(name) do
    "Hello #{name}"
  end

  def add_items(lim) do
    Enum.reduce(1..lim, fn(x, sum) -> x+sum end)
  end
end
