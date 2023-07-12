defmodule Ledgex.Repo.Migrations.CreatePerson do
  use Ecto.Migration

  def change do
    create table(:persons, primary_key: false) do
      add :id, :binary_id, primary_key: true

      add :first_name, :string
      add :last_name, :string
      add :email, :string
      add :birthdate, :date

      timestamps()
    end
  end
end
