defmodule Ledgex.Web.Resolver.Identifyable do
  @moduledoc """
  The resolver for any identifyable object.
  """

  alias Absinthe.Resolution

  alias Ledgex.Cache.IDCache

  @spec resolve(map(), %{id: String.t()}, Resolution.t()) ::
          {:ok, map()} | {:error, Ecto.Changeset.t()}
  def resolve(_parent, %{id: id}, _info) do
    IDCache.get(id)
  end
end
