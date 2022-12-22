defmodule ChatWeb.PageController do
  use ChatWeb, :controller

  def index(conn, _params) do
    messages = Chat.Message.get_messages(1)
    render(conn, "index.html", messages: messages)
  end

  def chat(conn, _params) do
    messages = Chat.Message.get_messages(1)
    render(conn, "chat.html", messages: messages)
  end
end
