defmodule AnimeWeb.PageController do
  use AnimeWeb, :controller

  plug :put_layout, "master1.html"

  def index(conn, _params) do
    render(conn, "welcome.html")
  end

  def anime(conn, _params) do
    render conn, "anime.html", layout: {AnimeWeb.LayoutView, "master2.html"}
  end
end
