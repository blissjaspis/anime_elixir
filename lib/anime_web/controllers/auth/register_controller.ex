defmodule AnimeWeb.Auth.RegisterController do
    use AnimeWeb, :controller

    alias Anime.Auth.User
    alias Anime.Auth

    plug :put_view, AnimeWeb.AuthView
    plug :put_layout, "auth.html"

    def index(conn, _params) do
        changeset = User.changeset(%User{}, %{})
        render conn, "register.html", changeset: changeset
    end

    def post(conn, %{"registrations" => registration_params}) do
        case Auth.register(registration_params) do
            {:ok, user} ->
                conn
                |> put_session(:current_user_id, user.id)
                |> put_flash(:info, "You have successfully signed up!")
                |> redirect(to: "/")
            {:error, changeset} ->
                render conn, "register.html", changeset: changeset
        end
    end
end
