defmodule GameArchive.Repo do
  use Ecto.Repo,
    otp_app: :game_archive,
    adapter: Ecto.Adapters.Postgres
end
