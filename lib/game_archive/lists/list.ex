defmodule GameArchive.Lists.List do
  use Ecto.Schema
  import Ecto.Changeset

  schema "lists" do


    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(list, attrs) do
    list
    |> cast(attrs, [])
    |> validate_required([])
  end
end
