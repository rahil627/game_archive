defmodule GameArchive.Lists do
  @moduledoc """
  The Lists context.
  """

  import Ecto.Query, warn: false
  alias GameArchive.Repo
  alias GameArchive.List

  def list_lists do
    Repo.all(List)
  end

  def get_list!(id), do: Repo.get!(List, id)

  def create_list(attrs \\ %{}) do
    %List{}
    |> List.changeset(attrs)
    |> Repo.insert()
  end

  def update_list(%List{} = list, attrs) do
    list
    |> List.changeset(attrs)
    |> Repo.update()
  end

  def delete_list(%List{} = list) do
    Repo.delete(list)
  end

  def change_list(%List{} = list, attrs \\ %{}) do
    List.changeset(list, attrs)
  end
end
