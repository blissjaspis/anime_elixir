defmodule Anime.Auth.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias Anime.Auth.User
  alias Comeonin.Argon2

  schema "users" do
    field :email, :string
    field :password, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:name, :email])
    |> validate_required([:name, :email])
    |> validate_length(:name, min: 5, max: 30)
    |> unique_constraint(:email)
  end

  def registration_changeset(%User{} = user, attrs) do
    user
    |> changeset(attrs)
    |> validate_confirmation(:password)
    |> cast(attrs, [:password], [])
    |> validate_length(:password, min: 5, max: 128)
    |> encrypt_password()
  end

  def encrypt_password(changeset) do
    case changeset do
      %Ecto.Changeset{valid?: true, changes: %{password: password}} ->
        put_change(changeset, :password, Argon2.hashpwsalt(password))
      _ ->
       changeset 
    end
  end
end
