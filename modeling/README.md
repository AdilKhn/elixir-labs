# Modeling

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `modeling` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:modeling, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/modeling](https://hexdocs.pm/modeling).


###Notes
- Create user, and role using the system commands
- Then use psql as the superuser and do a `alter user athleticu createdb;` 
- following this `mix ecto.create` should create the databse
