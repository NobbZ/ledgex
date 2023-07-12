defmodule Ledgex.Web.Schema.DummyTest do
  use Ledgex.Web.ConnCase

  @dummy_query """
    query getDummy {
      dummy
    }
  """

  test "dummy query", %{conn: conn} do
    conn = post(conn, "/graphql", %{"query" => @dummy_query})

    assert json_response(conn, 200) == %{
             "data" => %{
               "dummy" => "dummy"
             }
           }
  end
end
