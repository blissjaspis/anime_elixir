defmodule AnimeWeb.Auth.LoginController do
	use AnimeWeb, :controller

	plug :put_view, AnimeWeb.AuthView
	plug :put_layout, "auth.html"
	
	def index(conn, _params) do
		render conn, "login.html"
	end
end
