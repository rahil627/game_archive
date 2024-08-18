defmodule GameArchive.Games do # TODO: rename this to Archive?
  @moduledoc """
  The Games context.
  """

  import Ecto.Query, warn: false # the sql query dsl

  alias GameArchive.Repo
  alias GameArchive.Game

  def list_games do
    Repo.all(Game) # TODO: i think this selects all by default
  end

  def get_game!(id) do
    Repo.get!(Game, id)
  end

  def create_game(attrs \\ %{}) do
    %Game{}
    |> Game.changeset(attrs)
    |> Repo.insert()
  end

  def update_game(%Game{} = game, attrs) do
    game
      |> Game.changeset(attrs)
      |> Repo.update()
  end

  def delete_game(%Game{} = game) do
    Repo.delete(game)
  end

  def change_game(%Game{} = game, attrs \\ %{}) do
    # TODO: see https://hexdocs.pm/phoenix/contexts.html
    game
    |> Game.changeset(attrs)
  end
end
