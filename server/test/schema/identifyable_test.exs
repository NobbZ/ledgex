defmodule Ledgex.Web.Schema.IdentifyableTest do
  use Ledgex.Web.GraphqlCase, query: "test/queries/query_identifyable.graphql"

  import Ledgex.Factory

  alias Ledgex.Web.Schema

  @typenames %{
    person: "Person"
  }

  :identifyable
  |> Schema.Helper.types_extending()
  |> Enum.each(fn factory ->
    describe "#{factory}" do
      setup %{conn: conn} do
        thing = insert(unquote(factory))

        conn
        |> post("/graphql", %{
          "query" => @query,
          "variables" => %{"id" => thing.id}
        })
        |> json_response(200)
        |> tap(&refute(get_in(&1, ["errors"])))
        |> get_in(["data", "search"])
        |> then(&{:ok, search: &1, thing: thing})
      end

      test "has correct ID", %{search: search, thing: thing} do
        assert thing.id == search["id"]
      end

      test "has correct __typename", %{search: search} do
        assert @typenames[unquote(factory)] == search["__typename"]
      end

      test "has correct fields", %{search: search, thing: thing} do
        search = search |> Map.drop(["id", "__typename"])

        thing =
          thing
          |> Map.drop([:__struct__, :__meta__, :id, :inserted_at, :updated_at])
          |> Enum.map(fn {k, v} -> {Atom.to_string(k), convert(v)} end)
          |> Map.new()

        assert thing == search
      end
    end
  end)

  defp convert(value) when is_binary(value), do: value
  defp convert(%Date{} = date), do: Date.to_string(date)
end
