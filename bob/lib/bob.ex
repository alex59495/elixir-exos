defmodule Bob do

  @doc """
    Respond to the user

  ## Examples

      iex> Bob.hey("bal bal bla")
      "Whatever."

      iex> Bob.hey("bal bal bla ?")
      "Sure."

      iex> Bob.hey("BLA BLA BLA ?")
      "Calm down, I know what I'm doing!"

      iex> Bob.hey("BLA BLA BLA")
      "Whoa, chill out!"

  """
  def hey(input) do
    cond do
      String.upcase(input) === input and String.contains?(input, "?") and String.match?(input, ~r/[A-Za-zУХОДИ]/) ->
        "Calm down, I know what I'm doing!"
      String.upcase(input) === input and String.match?(input, ~r/[A-Za-zУХОДИ]/) ->
        "Whoa, chill out!"
      String.trim(input) |> String.split("") |> Enum.at(-2) === "?" ->
        "Sure."
      !String.match?(input, ~r/[A-Za-z0-9]/) ->
        "Fine. Be that way!"
      true -> "Whatever."
    end
  end
end
