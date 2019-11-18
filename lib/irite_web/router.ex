defmodule IriteWeb.Router do
  use IriteWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api/v1", IriteWeb do
    pipe_through :api

    resources "/users", UserController, only: [:create, :show]
  end
end
