defmodule Ledgex.Web.GraphqlCase do
  @moduledoc """
  This module is used to test GraphQL queries.

  To achieve this it uses `Phoenix.ConnTest` and also
  provides an easy way to import external queries.


  """

  use ExUnit.CaseTemplate

  using options do
    external_resources =
      options[:query]
      |> case do
        nil -> []
        query when is_binary(query) -> [query]
        queries when is_map(queries) -> Map.values(queries)
      end
      |> Enum.map(fn path ->
        quote do
          @external_resource unquote(path)
        end
      end)

    query_ast =
      case options[:query] do
        nil ->
          nil

        query when is_binary(query) ->
          quote do
            @query File.read!(unquote(query))
          end

        queries when is_map(queries) ->
          quote do
            @queries unquote(queries)
                     |> Enum.map(fn {name, file} -> {name, File.read!(file)} end)
                     |> Map.new()
          end
      end

    options = Keyword.delete(options, :query)

    quote do
      # We always are a ConnCase when we're a GraphQL case
      use Ledgex.Web.ConnCase, unquote(options)

      unquote(external_resources)
      unquote(query_ast)
    end
  end
end
