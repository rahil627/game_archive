defmodule GameArchive.Repo.Migrations.CreateGames do
  use Ecto.Migration

  def change do
    create table(:games) do
      add :title, :string
      add :alt_titles, {:array, :string}
      add :makers, {:array, :string}
      add :studios, {:array, :string}
      add :countries, {:array, :string}
      add :languages, {:array, :string}
      add :release_year, :integer
      add :genres, {:array, :string}
      add :tags, {:array, :string}
      add :short_description, :string
      add :tech_tags, {:array, :string}

      timestamps(type: :utc_datetime)
    end
  end
end
