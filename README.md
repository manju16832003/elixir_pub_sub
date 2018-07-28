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

## Distributed

Open Terminal 1

```
> iex --sname node1@localhost -S mix
iex> ElixirPubSub.Communication.start_link()
iex> ElixirPubSub.Communication.get()
```

Open Terminal 2
```
iex --sname node2@localhost -S mix
iex> ElixirPubSub.Communication.start_link()
iex> Node.connect(:node1@localhost)
true

iex> ElixirPubSub.Ferrari.talk("Vettel", "Is your gear box OK?")
// In Terminal one, you could see 
%{}
Talking to Vettel (Is your gear box OK?)
```

### Improvements

- Going Distributed

### Reference:

https://www.pompecki.com/post/phoenix-pubsub/

https://medium.com/@derek.kraan2/elixir-tip-noreply-is-a-killer-feature-40d7d803b272
