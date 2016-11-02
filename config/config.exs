# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :dlabs_api,
  ecto_repos: [DlabsApi.Repo]

# Configures the endpoint
config :dlabs_api, DlabsApi.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "YaaRKTPMsHiMb5i5rpXA1tT4vGav06vuejfdQ0ewEAJYDEIhXZrWBZZ4U3FY0moH",
  render_errors: [view: DlabsApi.ErrorView, accepts: ~w(html json)],
  pubsub: [name: DlabsApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
