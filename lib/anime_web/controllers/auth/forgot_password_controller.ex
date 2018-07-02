defmodule AnimeWeb.Auth.ForgotPasswordController do
    use AnimeWeb, :controller

    plug :put_view, AnimeWeb.Auth.PasswordView
    plug :put_layout, "auth.html"
    
    def reset(conn, _params) do
        render conn, "reset.html" 
    end
    
end
