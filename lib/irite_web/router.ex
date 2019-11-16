defmodule IriteWeb.Router do
  use IriteWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", IriteWeb do
    pipe_through :api
  end
end
