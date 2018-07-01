defmodule AnimeWeb.PageController do
  use AnimeWeb, :controller

  plug :put_layout, "welcome.html" when action in [:index]
  plug :put_layout, "auth.html" when action in [:register, :login, :password_reset]
  
  def index(conn, _params) do
    render conn, "welcome.html"
  end

  def register(conn, _params) do
    render conn, "register.html"
  end

  def login(conn, _params) do
    render conn, "login.html"
  end

  def password_reset(conn, _params) do
    render conn, "password_reset.html"
  end
end
