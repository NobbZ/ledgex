defmodule Ledgex.Web.Scalar.Date do
  use Absinthe.Schema.Notation

  alias Absinthe.Blueprint.Input.Null, as: NullBlueprint
  alias Absinthe.Blueprint.Input.String, as: StringBlueprint

  scalar :date,
    name: "Date",
    description: "A date in YYYY-MM-DD format",
    parse: &parse_date/1,
    serialize: &serialize_date/1

  @doc """
  Parses a date string in the format "YYYY-MM-DD" into a Date struct.

  ## Examples

      iex> Ledgex.Web.Scalar.Date.parse_date(%StringBlueprint{value: "2018-01-01"})
      {:ok, ~D[2018-01-01]}

      iex> Ledgex.Web.Scalar.Date.parse_date(%NullBlueprint{})
      {:ok, nil}
  """
  @spec parse_date(StringBlueprint.t()) :: {:ok, Date.t()} | :error
  @spec parse_date(NullBlueprint.t()) :: {:ok, nil}
  def parse_date(%StringBlueprint{
        value: <<year::binary-size(4), ?-, month::binary-size(2), ?-, day::binary-size(2)>>
      }) do
    with {year, ""} <- Integer.parse(year),
         {month, ""} <- Integer.parse(month),
         {day, ""} <- Integer.parse(day),
         {:ok, date} <- Date.new(year, month, day) do
      {:ok, date}
    else
      _ -> :error
    end
  end

  def parse_date(%NullBlueprint{}), do: {:ok, nil}
  def parse_date(_), do: :error

  def serialize_date(date), do: Date.to_iso8601(date)
end
