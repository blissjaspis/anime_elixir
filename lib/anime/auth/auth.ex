defmodule Anime.Auth do
    alias Anime.Repo
    alias Anime.Auth.User
    
    def login(email, password) do
        user = Repo.get_by(User, email: email)
        cond do
            User && user.encrypted_password == password ->
                {:ok, user}
            true ->
                {:error, :unauthorized}
        end
    end

    def current_user(conn) do
        user_id = Plug.Conn.get_session(conn, :current_user_id)
        if user_id, do: Repo.get(User, user_id)
    end
    
    def user_login?(conn) do
        !!current_user(conn)
    end

    def logout(conn) do
        Plug.Conn.configure_session(conn, drop: true)
    end
end
