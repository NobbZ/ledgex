defmodule Ledgex.Web.Resolver.Person do
  @moduledoc """
  The Person resolver.
  """

  alias Absinthe.Resolution

  alias Ledgex.Data.Account

  @doc """
  Creates a new Person record from an graphql query.

  ## Parameters

  - `_parent`: Parent object (unused)
  - `args`: Map of attributes for the new person
  - `_info`: Absinthe resolution metadata (unused)

  ## Returns

  - `{:ok, person}` on success, where `person` is the created Person struct
  - `{:error, changeset}` if there was an error creating the person, where `changeset` contains the error details
  """
  @spec create_person(map(), map(), Resolution.t()) ::
          {:ok, Account.Person.t()} | {:error, Ecto.Changeset.t()}
  def create_person(_parent, args, _info) do
    Account.create_person(args)
  end

  @doc """
  Checks if a given value is a Person struct.

  This is used to determine if an object implements the Person interface.

  ## Examples

      iex> Ledgex.Web.Resolver.Person.person?(%Ledgex.Data.Account.Person{})
      true

      iex> Ledgex.Web.Resolver.Person.person?(~D[2022-01-01])
      false

  """
  @spec person?(any) :: boolean
  def person?(%Account.Person{}), do: true
  def person?(_), do: false
end
