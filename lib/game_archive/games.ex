defmodule GameArchive.Games do
  @moduledoc """
  The Games context.
  """

  import Ecto.Query, warn: false
  alias GameArchive.Repo

  alias GameArchive.Games.Game

  @doc """
  Returns the list of games.

  ## Examples

      iex> list_games()
      [%Game{}, ...]

  """
  def list_games do
    raise "TODO"
  end

  @doc """
  Gets a single game.

  Raises if the Game does not exist.

  ## Examples

      iex> get_game!(123)
      %Game{}

  """
  def get_game!(id), do: raise "TODO"

  @doc """
  Creates a game.

  ## Examples

      iex> create_game(%{field: value})
      {:ok, %Game{}}

      iex> create_game(%{field: bad_value})
      {:error, ...}

  """
  def create_game(attrs \\ %{}) do
    raise "TODO"
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
    raise "TODO"
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
    raise "TODO"
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
