defmodule Ledgex.Web.Router do
  use Ledgex.Web, :router

  forward "/graphql/explorer", Absinthe.Plug.GraphiQL, schema: Ledgex.Web.Schema
  forward "/graphql", Absinthe.Plug, schema: Ledgex.Web.Schema
end
