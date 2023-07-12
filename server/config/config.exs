import Config

config :ledgex, ecto_repos: [Ledgex.Repo]

config :ledgex, Ledgex.Repo,
  database: "ledgex_dev",
  username: "ledgex_user",
  password: "ledgex_password",
  hostname: "localhost"

import_config "#{config_env()}.exs"
