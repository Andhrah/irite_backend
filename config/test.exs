use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :irite, IriteWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Finally import the config/test.secret.exs which loads secrets
# and configuration from environment variables.
if Mix.env == ":test" do
  config :irite, Irite.Repo,
  username: System.get_env("POSTGRES_USER"),
  password: System.get_env("POSTGRES_PASSWORD"),
  database: System.get_env("POSTGRES_DB")
else
  import_config "test.secret.exs"
end
