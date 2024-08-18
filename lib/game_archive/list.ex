defmodule GameArchive.List do
  use Ecto.Schema
  import Ecto.Changeset

  schema "lists" do
    field :user_id, :id
    field :title, :string
    field :description, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(list, attrs) do
    list
    |> cast(attrs, [:title, :description])
    |> validate_required([:title, :description])
  end
end
