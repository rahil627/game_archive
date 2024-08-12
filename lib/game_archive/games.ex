# TODO: rename this to Archive?
defmodule GameArchive.Games do
  @moduledoc """
  The Games context.
  """

  import Ecto.Query, warn: false # the sql query dsl

  alias GameArchive.Repo
  alias GameArchive.Game

  @doc """
  Returns the list of games.

  ## Examples

      iex> list_games()
      [%Game{}, ...]

  """
  def list_games do
    Repo.all(Game) # TODO: i think this selects all by default
    # raise "TODO"
  end

  @doc """
  Gets a single game.

  Raises if the Game does not exist.

  ## Examples

      iex> get_game!(123)
      %Game{}

  """
  def get_game!(id) do
    # Repo.one(from g in Game, where: game_id = id) # TODO: select all when no select: ?
    # Repo.one(Game, id: id)
    Repo.get(Game, id: id)
    # raise "TODO"
  end

  @doc """
  Creates a game.

  ## Examples

      iex> create_game(%{field: value})
      {:ok, %Game{}}

      iex> create_game(%{field: bad_value})
      {:error, ...}

  """
  def create_game(attrs \\ %{}) do
    %Game{}
    |> Game.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a game.

  ## Examples

      iex> update_game(game, %{field: new_value})
      {:ok, %Game{}}

      iex> update_game(game, %{field: bad_value})
      {:error, ...}

  """
  def update_game(%Game{} = game, attrs) do
    Repo.insert_or_update(game, attrs)
  end

  @doc """
  Deletes a Game.

  ## Examples

      iex> delete_game(game)
      {:ok, %Game{}}

      iex> delete_game(game)
      {:error, ...}

  """
  def delete_game(%Game{} = game) do
    Repo.delete(game)
  end

  @doc """
  Returns a data structure for tracking game changes.

  ## Examples

      iex> change_game(game)
      %Todo{...}

  """
  def change_game(%Game{} = game, _attrs \\ %{}) do
    raise "TODO"
  end
end
