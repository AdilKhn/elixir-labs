defmodule ModelingTest do
  use ExUnit.Case
  doctest Modeling

  test "greets the world" do
    assert Modeling.hello() == :world
  end

  test "create an object with an attribute" do
    person = %Modeling.Person{first_name: "Thor"} 
    assert person.first_name == "Thor"
  end
  
  test "insert the created object and get the id" do
    person = %Modeling.Person{first_name: "Thor"} 
    result = Modeling.Repo.insert person
    assert elem(result, 1).id > 1
  end
end
