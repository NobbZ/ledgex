import Config

config :ledgex, Ledgex.Web.Endpoint,
  # Binding to loopback ipv4 address prevents access from other machines.
  # Change to `ip: {0, 0, 0, 0}` to allow access from other machines.
  http: [ip: {127, 0, 0, 1}, port: 4000],
  check_origin: false,
  code_reloader: true,
  debug_errors: true,
  secret_key_base: "JoKEKz4BvYfeRiV3Wi6ViKnptzZEUUilbMV5orspdglflmskXgXzK2cUdKo46g"

config :mix_test_watch, extra_extensions: [".graphql"]
