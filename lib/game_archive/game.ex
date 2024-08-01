defmodule GameArchive.Game do
  use Ecto.Schema
  import Ecto.Changeset

  schema "games" do
    field :title, :string
    field :alt_titles, {:array, :string}
    field :makers, {:array, :string}
    field :studios, {:array, :string}
    field :countries, {:array, :string}
    field :languages, {:array, :string}
    field :release_year, :integer
    field :genres, {:array, :string}
    field :tags, {:array, :string}
    field :short_description, :string
    field :tech_tags, {:array, :string}

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(game, attrs) do
    game
    |> cast(attrs, [:title, :alt_titles, :makers, :studios, :countries, :languages, :release_year, :genres, :tags, :short_description, :tech_tags])
    |> validate_required([:title, :alt_titles, :makers, :studios, :countries, :languages, :release_year, :genres, :tags, :short_description, :tech_tags])
  end
end
