defmodule SyntaxExampleSpec do
  use ESpec

  context "some general specs" do
    it do: expect true |> to(be_true())
    it do: expect(1 + 1).to eq(2)
    it do: (1..3) |> should(have 2)

    it "something good " do
      expect true |> to(be_true())
    end
  end

  context "ecto tests" do
    it "create an object with an attribute" do
      person = %Modeling.Person{first_name: "Thor"} 
      expect person.first_name == "Thor"
    end

    it "insert the created object and get the id" do
      person = %Modeling.Person{first_name: "Thor"} 
      result = Modeling.Repo.insert person
      expect elem(result, 1).id > 1
    end
  end
end
