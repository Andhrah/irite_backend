use Mix.Config

# Configure your database
# change the password to your local postgres password
config :irite, Irite.Repo,
username: "postgres" || System.get_env("POSTGRES_USER"), 
password: "postgres" || System.get_env("POSTGRES_PASSWORD"),
database: "irite_test" || System.get_env("POSTGRES_DB"),
pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :irite, IriteWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
