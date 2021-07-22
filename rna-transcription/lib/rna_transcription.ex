defmodule RnaTranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RnaTranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]

  def change_letter(letter) do
    case letter do
      'G' -> 'C'
      71 -> 67
      'C' -> 'G'
      67 -> 71
      'T' -> 'A'
      84 -> 65
      'A' -> 'U'
      65 -> 85
    end
  end

  def to_rna(dna) do
    cond do
      length(dna) > 1 ->
        Enum.map(dna, fn let -> change_letter(let) end)
      true ->
        change_letter(dna)
    end
  end
end
