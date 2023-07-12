defmodule Ledgex.Repo do
  use Ecto.Repo,
    otp_app: :ledgex,
    adapter: Ecto.Adapters.Postgres
end
