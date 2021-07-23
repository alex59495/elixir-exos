defmodule WordCount do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.

  ## Examples

    iex> WordCount.count("alex et Max sont frères et Alex est le plus vieux")
    %{"alex" => 2, "et" => 2, "max" => 1, "sont" => 1, "frères" => 1, "est" => 1, "le" => 1, "plus" => 1, "vieux" => 1}
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
