# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :hitly,
  ecto_repos: [Hitly.Repo]

# Configures the endpoint
config :hitly, HitlyWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "0icnENppU3mjJ0GlywS9UH+2mfgfqLHDgFx2HbDKFJwU9aS4B+yCHv0NCOheLUPv",
  render_errors: [view: HitlyWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Hitly.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix and Ecto
config :phoenix, :json_library, Jason
config :ecto, :json_library, Jason


# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
