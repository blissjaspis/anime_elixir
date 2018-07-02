defmodule AnimeWeb.PageController do
  use AnimeWeb, :controller

  plug :put_layout, "welcome.html"
  
  def index(conn, _params) do
    render conn, "welcome.html"
  end

end
