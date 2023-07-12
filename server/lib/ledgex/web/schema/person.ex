defmodule Ledgex.Web.Schema.Person do
  use Absinthe.Schema.Notation

  object :person do
    field :id, :id
    field :first_name, non_null(:string)
    field :last_name, non_null(:string)
    field :email, non_null(:string)
    field :birthdate, :date
  end
end
