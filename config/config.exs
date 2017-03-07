# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :communicasts,
  ecto_repos: [Communicasts.Repo]

# Configures the endpoint
config :communicasts, Communicasts.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "5EcHhKipqwzTWQzmqRzAHXB3iaCG9lH+UPMtieu76PNt9lDEX9R1k45TLXgWPa3D",
  render_errors: [view: Communicasts.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Communicasts.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
