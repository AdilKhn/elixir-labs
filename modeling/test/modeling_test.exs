defmodule ModelingTest do
  use ExUnit.Case
  doctest Modeling

  test "greets the world" do
    assert Modeling.hello() == :world
  end
end
