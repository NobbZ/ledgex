defmodule Ledgex.Web.Resolver.Person do
  alias Ledgex.Data.Account

  def create_person(_parent, args, _info) do
    Account.create_person(args)
  end
end
