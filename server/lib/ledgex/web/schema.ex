defmodule Ledgex.Web.Schema do
  @moduledoc """
  The GraphQL schema.
  """

  use Absinthe.Schema

  alias Ledgex.Web.Resolver.Identifyable, as: IdentifyableResolver
  alias Ledgex.Web.Resolver.Person, as: PersonResolver

  import_types Ledgex.Web.Scalar.Date

  import_types Ledgex.Web.Schema.Identifyable
  import_types Ledgex.Web.Schema.Person

  query do
    @desc "a dummy field"
    field :dummy, :string, resolve: fn _, _, _ -> {:ok, "dummy"} end

    field :search, :identifyable do
      arg :id, non_null(:id)

      resolve &IdentifyableResolver.resolve/3
    end
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

  if Mix.env() in [:test, :dev] do
    defmodule Helper do
      @moduledoc false
      @spec types_extending(atom()) :: [atom()]
      def types_extending(interface) do
        Ledgex.Web.Schema
        |> Absinthe.Schema.types()
        |> Enum.map(&Map.from_struct/1)
        |> Enum.filter(fn
          type when is_map_key(type, :interfaces) -> interface in type.interfaces
          _ -> false
        end)
        |> Enum.map(fn type -> type.identifier end)
      end
    end
  end
end
