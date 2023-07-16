defmodule Ledgex.Factory do
  @moduledoc false

  use ExMachina.Ecto, repo: Ledgex.Repo

  alias Ledgex.Data.Account.Person

  def person_factory do
    first_name = Faker.Person.first_name()
    last_name = Faker.Person.last_name()
    email = "#{first_name}.#{last_name}@example.com"
    birthdate = Faker.Date.date_of_birth()

    %Person{
      first_name: first_name,
      last_name: last_name,
      email: email,
      birthdate: birthdate
    }
  end
end
