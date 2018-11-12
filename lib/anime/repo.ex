defmodule Anime.Repo do
  use Ecto.Repo,
    otp_app: :anime,
    adapter: Ecto.Adapters.Postgres
end
