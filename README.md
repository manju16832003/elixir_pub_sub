# ElixirPubSub

- Git clone the repo
- `cd to elixir_pub_sub`
- `mix deps.get`
- Then run the following in iex interactive mode `iex -S mix`

```
iex> ElixirPubSub.Communication.start_link()
iex> ElixirPubSub.Ferrari.talk("Vettel", "Is your gear box OK?")
iex> ElixirPubSub.Ferrari.talk("Vettel", "Do you copy that?")
iex> ElixirPubSub.Communication.get()
```

### Improvements

- Going Distributed

### Reference:

https://www.pompecki.com/post/phoenix-pubsub/
