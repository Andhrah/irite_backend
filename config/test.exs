use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :irite, IriteWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Finally import the config/prod.secret.exs which loads secrets
# and configuration from environment variables.
import_config "test.secret.exs"