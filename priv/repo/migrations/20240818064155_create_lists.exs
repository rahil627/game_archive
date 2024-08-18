defmodule GameArchive.Repo.Migrations.CreateLists do
  use Ecto.Migration

  def change do
    create table(:lists) do

      timestamps(type: :utc_datetime)
    end
  end
end
