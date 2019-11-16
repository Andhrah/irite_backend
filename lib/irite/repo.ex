defmodule Irite.Repo do
  use Ecto.Repo,
    otp_app: :irite,
    adapter: Ecto.Adapters.Postgres
end
