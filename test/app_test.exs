defmodule AppTest do
  use ExUnit.Case

  test "greets the world" do
    assert App.hello("foo") == "Hello foo"
  end

  test "run this function" do
    assert App.add_items(10) == 55
  end
end
