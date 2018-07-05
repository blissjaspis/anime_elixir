defmodule AnimeWeb.Auth.LoginController do
    use AnimeWeb, :controller
    
    alias Anime.Auth

	plug :put_view, AnimeWeb.AuthView
	plug :put_layout, "auth.html"
	
    def index(conn, _params) do
		render conn, "login.html"
	end

    def post(conn, %{"email" => email, "password" => password}) do
        case Auth.login(email, password) do
            {:ok, user} ->
                conn
                |> put_session(:current_user_id, user.id)
                |> put_flash(:info, "You have successfully signed in!")
                |> redirect(to: "/")
            {:error, _reason} ->
                conn
                |> put_flash(:error, "Invalid Email or Password")
                |> render("login.html")
        end
    end

    def logout(conn, _param) do
        conn
        |> Auth.logout()
        |> redirect(to: "/")
    end
end
