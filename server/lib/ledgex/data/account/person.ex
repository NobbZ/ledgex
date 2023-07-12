defmodule Ledgex.Data.Account.Person do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "persons" do
    field :first_name, :string
    field :last_name, :string
    field :email, :string
    field :birthdate, :date

    timestamps()
  end

  @doc false
  def changeset(product, attrs) do
    product
    |> cast(attrs, [:first_name, :last_name, :email, :birthdate])
    |> validate_required([:first_name, :last_name, :email])
  end
end
