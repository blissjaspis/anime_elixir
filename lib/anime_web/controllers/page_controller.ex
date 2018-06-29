defmodule AnimeWeb.PageController do
  use AnimeWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
