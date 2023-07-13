defmodule Ledgex.Web.Schema do
  @moduledoc """
  The GraphQL schema.
  """

  use Absinthe.Schema

  alias Ledgex.Web.Resolver.Person, as: PersonResolver

  import_types Ledgex.Web.Scalar.Date

  import_types Ledgex.Web.Schema.Person

  query do
    @desc "a dummy field"
    field :dummy, :string, resolve: fn _, _, _ -> {:ok, "dummy"} end
  end

  mutation do
    @desc "Creates a new user"
    field :create_user, :person do
      arg :first_name, non_null(:string)
      arg :last_name, non_null(:string)
      arg :email, non_null(:string)
      arg :birthdate, :date

      resolve &PersonResolver.create_person/3
    end
  end
end
