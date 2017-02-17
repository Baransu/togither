# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :togither,
  ecto_repos: [Togither.Repo]

# Configures the endpoint
config :togither, Togither.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "uJyOqKRsEwE6sitJPu+i+F/JdXsNi+ux2Yw2CY4lZNm640ZIuxrh3EHsPVHZOHjh",
  render_errors: [view: Togither.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Togither.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
