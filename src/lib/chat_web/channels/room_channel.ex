defmodule ChatWeb.RoomChannel do
  use ChatWeb, :channel

  @impl true
  def join("room:lobby", _payload, socket) do
    #if authorized?(payload) do
      send(self(), :after_join)
      {:ok, socket}
  end

  @impl true
  def join("room:chat1", _payload, socket) do
    #if authorized?(payload) do
      send(self(), :after_join1)
      {:ok, socket}
  end

  @impl true
  def join("room:chat2", _payload, socket) do
    #if authorized?(payload) do
      send(self(), :after_join2)
      {:ok, socket}
  end

  @impl true
  def join("room:chat3", _payload, socket) do
    #if authorized?(payload) do
      send(self(), :after_join3)
      {:ok, socket}
  end

  # Channels can be used in a request/response fashion
  # by sending replies to requests from the client
  @impl true
  def handle_in("ping", payload, socket) do
    {:reply, {:ok, payload}, socket}
  end

  # It is also common to receive messages from the client and
  # broadcast to everyone in the current topic (room:lobby).
  @impl true
  def handle_in("shout", payload, socket) do
    Chat.Message.changeset(%Chat.Message{}, payload) |> Chat.Repo.insert
    broadcast(socket, "shout", payload)
    {:noreply, socket}
  end

  @impl true
  def handle_info(:after_join1, socket) do
    Chat.Message.get_messages(1)
    |> Enum.reverse() # reverse to display the latest message at the bottom of the page
    |> Enum.each(fn msg -> push(socket, "shout", %{
        name: msg.name,
        message: msg.message,
        inserted_at: msg.inserted_at
      }) end)
    {:noreply, socket} # :noreply
  end
  
  def handle_info(:after_join2, socket) do
    Chat.Message.get_messages(2)
    |> Enum.reverse() # reverse to display the latest message at the bottom of the page
    |> Enum.each(fn msg -> push(socket, "shout", %{
        name: msg.name,
        message: msg.message,
        inserted_at: msg.inserted_at
      }) end)
    {:noreply, socket} # :noreply
  end

  def handle_info(:after_join3, socket) do
    Chat.Message.get_messages(3)
    |> Enum.reverse() # reverse to display the latest message at the bottom of the page
    |> Enum.each(fn msg -> push(socket, "shout", %{
        name: msg.name,
        message: msg.message,
        inserted_at: msg.inserted_at
      }) end)
    {:noreply, socket} # :noreply
  end
end
