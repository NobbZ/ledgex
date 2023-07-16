defmodule Ledgex.Data.Account.Person do
  @moduledoc """
  The Person schema.
  """

  use Ecto.Schema
  import Ecto.Changeset

  @type t :: %__MODULE__{
          id: String.t(),
          first_name: String.t(),
          last_name: String.t(),
          email: String.t(),
          birthdate: Date.t() | nil,
          inserted_at: DateTime.t(),
          updated_at: DateTime.t()
        }

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
