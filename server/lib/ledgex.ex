defmodule Ledgex do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl Application
  def start(_type, _args) do
    children = [
      # Start the repo
      Ledgex.Repo,
      # Start the Endpoint (http/https)
      Ledgex.Web.Endpoint
    ]

    opts = [strategy: :one_for_one, name: Ledgex.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
