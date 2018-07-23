# ElixirPubSub

```
iex> ElixirPubSub.Communication.start_link()
iex> ElixirPubSub.Ferrari.talk("Vettel", "Is your gear box OK?")
iex> ElixirPubSub.Ferrari.talk("Vettel", "Do you copy that?")
iex> ElixirPubSub.Communication.get()
```


## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `elixir_pub_sub` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:elixir_pub_sub, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/elixir_pub_sub](https://hexdocs.pm/elixir_pub_sub).

