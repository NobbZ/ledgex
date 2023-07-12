defmodule Ledgex.Web.Schema.CreateUserTest do
  use Ledgex.Web.GraphqlCase, query: "test/queries/mutation_create_user.graphql"

  @valid_args %{
    "first_name" => "John",
    "last_name" => "Doe",
    "email" => "john.doe@example.com"
  }

  describe "create user with only required data succeeds" do
    setup %{conn: conn} do
      conn
      |> post("/graphql", %{
        "query" => @query,
        "variables" => @valid_args
      })
      |> json_response(200)
      |> tap(&refute(get_in(&1, ["errors"])))
      |> get_in(["data", "createUser"])
      |> then(&{:ok, %{person: &1}})
    end

    test("id is returned", %{person: person}, do: assert(person["id"]))
    test("birthdate is nil", %{person: person}, do: assert(is_nil(person["birthdate"])))

    [{"first_name", "firstName"}, {"last_name", "lastName"}, {"email", "email"}]
    |> Enum.each(fn {arg, key} ->
      test "#{key} is returned", %{person: person} do
        assert(person[unquote(arg)] == @valid_args[unquote(key)])
      end
    end)
  end

  describe "create user with all data succeeds" do
    setup %{conn: conn} do
      conn
      |> post("/graphql", %{
        "query" => @query,
        "variables" => Map.put(@valid_args, "birthdate", "1980-01-01")
      })
      |> json_response(200)
      |> tap(&refute(get_in(&1, ["errors"])))
      |> get_in(["data", "createUser"])
      |> then(&{:ok, %{person: &1}})
    end

    test("id is returned", %{person: person}, do: assert(person["id"]))

    [{"first_name", "firstName"}, {"last_name", "lastName"}, {"email", "email"}]
    |> Enum.each(fn {arg, key} ->
      test "#{key} is returned", %{person: person} do
        assert(person[unquote(arg)] == @valid_args[unquote(key)])
      end
    end)
  end

  @valid_args
  |> Map.keys()
  |> Enum.each(fn key ->
    describe "fail if '#{key}' is missing" do
      setup %{conn: conn} do
        conn
        |> post("/graphql", %{
          "query" => @query,
          "variables" => Map.delete(@valid_args, unquote(key))
        })
        |> json_response(200)
        |> tap(&refute(get_in(&1, ["data"])))
        |> get_in(["errors"])
        |> then(fn [arg_err, var_err] = errors ->
          {:ok,
           errors: errors,
           argument_error: get_in(arg_err, ["message"]),
           variable_error: get_in(var_err, ["message"])}
        end)
      end

      test("error is returned", %{errors: errors}, do: assert(errors))

      test "correct argument error is returned", %{argument_error: argument_error} do
        assert argument_error =~
                 ~r/^In argument "#{unquote(key)}": Expected type ".*!", found null\.$/
      end

      test "correct variable error is returned", %{variable_error: variable_error} do
        assert variable_error =~
                 ~r/^Variable "#{unquote(key)}": Expected non-null, found null\.$/
      end
    end
  end)
end
