defmodule GameArchive.List do
  use Ecto.Schema
  import Ecto.Changeset

  schema "lists" do
    field :user_id, :id # NOTE: reference created in migration file
    field :title, :string
    field :description, :string

    has_many :games, Game
    # has_many :tags, {"posts_tags", Tag}
    # has_many :comments, Comment


    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(list, attrs) do
    list
    |> cast(attrs, [:title, :description])
    |> validate_required([:title, :description])
  end
end
