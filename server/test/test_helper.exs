{:ok, _} = Application.ensure_all_started(:faker)
{:ok, _} = Application.ensure_all_started(:ex_machina)

ExUnit.start()
