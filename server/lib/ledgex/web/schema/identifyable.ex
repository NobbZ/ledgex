defmodule Ledgex.Web.Schema.Identifyable do
  @moduledoc """
  Defines the Identifyable interface.

  ## Fields

  - `id` (:id) - The unique identifier for the object.

  ## Usage

  Any object type that needs to be uniquely identifiable should implement
  the `Identifyable` interface.

  For example:

      object :person do
        interface :identifyable
        ...
      end


  This will require the `Person` object to have an `id` field.
  """

  use Absinthe.Schema.Notation

  interface :identifyable do
    field :id, :id
  end
end
