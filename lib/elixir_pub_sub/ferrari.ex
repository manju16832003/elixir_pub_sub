defmodule ElixirPubSub.Ferrari do
  @pubsub_name :ferrari
  @pubsub_topic "ferrari_team_updates"

  def talk(driver, message) when is_binary(driver) and is_binary(message) do
    Phoenix.PubSub.broadcast(@pubsub_name, @pubsub_topic, { :talk, driver, message })
  end

  def return(driver, message) when is_binary(driver) and is_binary(message) do
    Phoenix.PubSub.broadcast(@pubsub_name, @pubsub_topic, { :return, driver, message })
  end
end
