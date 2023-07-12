defmodule Ledgex.Web.Scalar.DateTest do
  use ExUnit.Case, async: true

  alias Absinthe.Blueprint.Input.Null, as: NullBlueprint
  alias Absinthe.Blueprint.Input.String, as: StringBlueprint

  alias Ledgex.Web.Scalar.Date, as: DateScalar

  doctest Ledgex.Web.Scalar.Date

  describe "parse" do
    test "parses a valid date" do
      assert {:ok, ~D[2018-01-01]} == DateScalar.parse_date(%StringBlueprint{value: "2018-01-01"})
    end

    test "returns an error for an invalid date" do
      assert :error == DateScalar.parse_date(%StringBlueprint{value: "2018-01-32"})
    end

    test "returns an error for an invalid format" do
      assert :error == DateScalar.parse_date(%StringBlueprint{value: "2018-01"})
    end

    test "accepts nil" do
      assert {:ok, nil} == DateScalar.parse_date(%NullBlueprint{})
    end
  end

  describe "serialize" do
    test "serializes a date" do
      assert "2018-01-01" == DateScalar.serialize_date(~D[2018-01-01])
    end
  end
end
