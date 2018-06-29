# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :anime,
  ecto_repos: [Anime.Repo]

# Configures the endpoint
config :anime, AnimeWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "rPAvqKdcWFYZ2onen8Q8sjZKZr5CEZXRbkW8TKsWRi4ez85J0sr0csdVAVwDwl+t",
  render_errors: [view: AnimeWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Anime.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
