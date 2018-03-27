# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :discuss5, ecto_repos: [Discuss5.Repo]

# Configures the endpoint
config :discuss5, Discuss5.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "d73tnBTdoJwah88nClJVnaUn0MrOj9CPliMtqYDwBZ3Hnul0CbPDNDsXUEEdIm3Q",
  render_errors: [view: Discuss5.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Discuss5.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

config :ueberauth, Ueberauth,
  providers: [
    github: {Ueberauth.Strategy.Github, []}
  ]

config :ueberauth, Ueberauth.Strategy.Github.OAuth,
  client_id: "2db8f68ce3e908f26261",
  client_secret: "0a22b6cd5997fd7644b55378a664c55e38c3ac31"
