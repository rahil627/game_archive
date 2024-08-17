# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     GameArchive.Repo.insert!(%GameArchive.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.


# LEARN HOW TO ELIXIR HERE!

# TODO: it's pretty silly to generate data using elixir. Should be a seperate cli program to handle this..


# for reference
# schema "games" do
#   field :title, :string
#   field :alt_titles, {:array, :string}
#   field :makers, {:array, :string}
#   field :studios, {:array, :string}
#   field :countries, {:array, :string}
#   field :languages, {:array, :string}
#   field :release_year, :integer
#   field :genres, {:array, :string}
#   field :tags, {:array, :string}
#   field :short_description, :string
#   field :tech_tags, {:array, :string}

#   timestamps(type: :utc_datetime)
# end


# manually test one for now..

# example
# def build_session_token(user) do
#   token = :crypto.strong_rand_bytes(@rand_size)
#   {token, %UserToken{token: token, context: "session", user_id: user.id}}
# end

defmodule GameArchive.GameMaker do

  alias GameArchive.Game
  alias Faker # strange library


  def make_game do
    %Game { # this must be a tuple.. {key: value} NOTE: syntax requires the space
      title: "test",
      alt_titles: ["string 1", "string 2"], # i think "arrays" are just lists in elixir..
      makers: ["string 1", "string 2"],
      studios: ["string 1", "string 2"],
      countries: ["string 1", "string 2"],
      languages: ["string 1", "string 2"],
      release_year: 1999,
      genres: ["string 1", "string 2"],
      tags: ["string 1", "string 2"],
      short_description: "this is a description",
      tech_tags: ["string 1", "string 2"],
    }
  end

  # generates this sql
  # INSERT INTO "games" ("title","tags","alt_titles","makers","studios","countries","languages","release_year","genres","short_description","tech_tags","inserted_at","updated_at") VALUES ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13) RETURNING "id" ["test", ["string 1", "string 2"], ["string 1", "string 2"], ["string 1", "string 2"], ["string 1", "string 2"], ["string 1", "string 2"], ["string 1", "string 2"], 1999, ["string 1", "string 2"], "this is a description", ["string 1", "string 2"], ~U[2024-08-12 09:13:45Z], ~U[2024-08-12 09:13:45Z]]

  # def make_games do # TODO: NOTE: function doesn't need (), but the call does
  #   # TODO: how to loop..?
  #   Enum.each(1..100, gen_game())
  # end

  def gen_game do # LOVE the defp syntax!
     %Game { # this must be a tuple.. {key: value} NOTE: syntax requires the space
      title: Faker.Lorem.word(),
      alt_titles: [Faker.Lorem.word(), Faker.Lorem.word()], # i think "arrays" are just lists in elixir..
      makers: [Faker.Person.name(), Faker.Person.name()],
      studios: [Faker.Lorem.word(), Faker.Lorem.word()],
      countries: [Faker.Lorem.word(), Faker.Lorem.word()],
      languages: [Faker.Lorem.word(), Faker.Lorem.word()],
      release_year: 1999,
      genres: [Faker.Lorem.word(), Faker.Lorem.word()],
      tags: [Faker.Lorem.word(), Faker.Lorem.word()],
      short_description: Faker.Lorem.sentence(5..10),
      tech_tags: [Faker.Lorem.word(), Faker.Lorem.word()],
    }
 end

end

# main script starts here
alias GameArchive.Repo
alias GameArchive.GameMaker
# alias GameArchive.Games

for n <- 1..10 do
  Repo.insert!(GameMaker.gen_game())
end




# testing stuff
# game2 = Games.create_game() # TODO: what are attrs?
# TODO: error:

# Repo.insert!(game2)

# Games.create_game() # Repo.insert!(game)
# Games.update_game(game, )
