defmodule Ledgex.Data.Account do
  @moduledoc """
  The Account context.
  """

  import Ecto.Query, warn: false

  alias Ledgex.Repo

  alias Ledgex.Data.Account.Person

  @doc """
  Returns the list of all persons.

  ## Examples

      iex> Ledgex.Data.Account.list_persons()
      []
  """
  def list_persons do
    Repo.all(Person)
  end

  def create_person(attrs \\ %{}) do
    %Person{}
    |> Person.changeset(attrs)
    |> Repo.insert()
  end
end
