defmodule Ledgex.MixProject do
  use Mix.Project

  def project do
    [
      app: :ledgex,
      version: "0.1.0",
      elixir: "~> 1.14",
      elixirc_paths: elixirc_paths(Mix.env()),
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases(),
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [
        "coveralls.json": :test,
        "coveralls.html": :test
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {Ledgex, []},
      extra_applications: [:logger]
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:absinthe_plug, "~> 1.5.8"},
      {:absinthe, "~> 1.7.4"},
      {:cachex, "~> 3.6.0"},
      {:credo, "~> 1.7.0", only: :dev, runtime: false},
      {:dialyxir, "~> 1.4.0", only: :dev, runtime: false},
      {:ecto_sql, "~> 3.10.1"},
      {:ex_machina, "~> 2.7.0", only: :test},
      {:excoveralls, "~> 0.18.0", only: [:dev, :test]},
      {:faker, "~> 0.17", only: :test},
      {:jason, "~> 1.4.1"},
      {:mix_test_watch, "~> 1.1", only: :dev, runtime: false},
      {:phoenix, "~> 1.7.7"},
      {:plug_cowboy, "~> 2.6"},
      {:postgrex, "~> 0.17.1"}
    ]
  end

  defp aliases do
    [test: ["ecto.create --quiet", "ecto.migrate --quiet", "test"]]
  end
end
