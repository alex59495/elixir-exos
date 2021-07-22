defmodule WordCount do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map

  def count(sentence) do
    String.replace(sentence, ~r/[!!&@$%^&\"]*/, "")
    |> String.replace(~r/:/, "")
    |> String.split(~r/\s|_|,/)
    |> Enum.map(fn f -> String.downcase(f) end)
    |> Enum.frequencies
    |> Map.delete("")
  end
end
