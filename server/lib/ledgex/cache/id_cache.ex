defmodule Ledgex.Cache.IDCache do
  @moduledoc """
  Provides a cache for looking up objects by ID.

  The cache is used to optimize object lookups by ID across all valid identifyable
  types.

  When an ID is first requested, it scans all valid identifyable tables to find
  the matching record. This records type is then cached for fast lookup next time
  the same ID is requested.
  """

  import Ecto.Query

  alias Ledgex.Data.Account.Person
  alias Ledgex.Repo

  @valid_identifyables [
    Person
  ]

  @doc """
  Looks up an identifyable object by ID.

  First checks the cache. If not found, scans all valid identifyable tables.

  Returns `{:ok, object}` if found, `{:error, reason}` if not found.

  ## Examples

      iex> Ledgex.Cache.IDCache.get("123")
      {:ok, %Person{id: "123", ...}}
  """
  def get(id) do
    Cachex.execute!(__MODULE__, fn cache ->
      case Cachex.get(cache, id) do
        {:ok, nil} -> scan_tables(cache, id)
        {:ok, table} -> find_id_in_table(table, id)
        {:error, _} -> {:error, "Invalid ID"}
      end
    end)
  end

  @doc """
  Scans all valid identifyable tables for the given ID.

  If found, caches the result before returning.

  Returns `{:ok, table, object}` if found, `{:error, reason}` if not found.
  """
  def scan_tables(cache, id) do
    @valid_identifyables
    |> Enum.find_value(&find_id_in_table(&1, id))
    |> case do
      {_, nil} -> {:error, "Invalid ID"}
      {table, identifyable} -> {:ok, table, identifyable}
    end
    |> case do
      {:ok, table, identifyable} ->
        Cachex.put(cache, id, table)
        {:ok, identifyable}

      {:error, _} ->
        {:error, "Invalid ID"}
    end
  end

  @doc """
  Checks a specific table for the given ID.

  Returns `{table, object}` if found, `{table, nil}` if not found.
  """
  def find_id_in_table(table, id) do
    from(thing in table, where: thing.id == ^id, select: thing)
    |> Repo.one()
    |> then(&{table, &1})
  end

  if Mix.env() in [:test, :dev] do
    alias Ledgex.Web.Schema

    if length(@valid_identifyables) != length(Schema.Helper.types_extending(:identifyable)) do
      Mix.raise("""
      The list of valid identifyables in the Identifyable resolver does not match the list of types extending the Identifyable interface in the schema.

      Please update the list of valid identifyables in the Identifyable resolver to match the list of types extending the Identifyable interface in the schema.
      """)
    end
  end
end
