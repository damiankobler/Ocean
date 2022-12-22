defmodule Chat.Message do
  alias Postgrex.Messages
  use Ecto.Schema
  import Ecto.Changeset
  import Ecto.Query

  schema "messages" do
    field :message, :string
    field :name, :string
    field :chatroom, :integer
    timestamps()
  end

  @doc false
  def changeset(message, attrs) do
    message
    |> cast(attrs, [:name, :message, :chatroom])
    |> validate_required([:name, :message, :chatroom])
  end

  def get_messages(chatroomin, limit \\ 20) do
    Chat.Message
    |> where([m], m.chatroom == ^chatroomin)
    |> limit(^limit)
    |> order_by(desc: :inserted_at)
    |> Chat.Repo.all()
  end
end
