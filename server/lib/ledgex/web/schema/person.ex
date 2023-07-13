defmodule Ledgex.Web.Schema.Person do
  @moduledoc """
  Defines the Person object type.

  ## Fields

  - `first_name` (non_null :string) - The person's first name.

  - `last_name` (non_null :string) - The person's last name.

  - `email` (non_null :string) - The person's email address.

  - `birthdate` (:date) - The person's date of birth.

  ## Usage

  The `Person` object represents a user account. It implements the `Identifyable` interface.
  """

  use Absinthe.Schema.Notation

  alias Ledgex.Web.Resolver.Person, as: PersonResolver

  object :person do
    interface :identifyable
    import_fields :identifyable
    is_type_of &PersonResolver.person?/1

    field :first_name, non_null(:string)
    field :last_name, non_null(:string)
    field :email, non_null(:string)
    field :birthdate, :date
  end
end
