defmodule AnimeWeb.Router do
  use AnimeWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", AnimeWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/register", PageController, :register
    get "/login", PageController, :login
    get "/password/reset", PageController, :password_reset
  end

  # Other scopes may use custom stacks.
  # scope "/api", AnimeWeb do
  #   pipe_through :api
  # end
end
