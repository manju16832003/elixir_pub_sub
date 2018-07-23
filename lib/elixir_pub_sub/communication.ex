# Communication between team driver and the team
defmodule ElixirPubSub.Communication do
  use GenServer

  def start_link() do
    GenServer.start_link(__MODULE__, nil, name: __MODULE__)
  end

  def get() do
    GenServer.call(__MODULE__, :get)
  end

  def init(_) do
    Phoenix.PubSub.subscribe(:ferrari, "ferrari_team_updates")
    {:ok, %{}}
  end

  def handle_call(:get, _, state) do
    {:reply, state, state}
  end

  def handle_info({:talk, driver, message}, state) do
    IO.puts("Talking to #{driver} (#{message})")

    updated_state = state
      |> Map.put(driver, message)

    {:noreply, updated_state}
  end

  def handle_info( { :return, driver, message}, state ) do
    IO.puts("Reply #{driver} (#{message})")

    updated_state = state

    {:noreply, updated_state}
  end
end
