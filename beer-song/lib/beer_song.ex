defmodule BeerSong do
  @doc """
  Get a single verse of the beer song
  """
  @spec verse(integer) :: String.t()
  def verse(number) do
    cond do
      number > 1 ->
        """
        #{number} bottles of beer on the wall, #{number} bottles of beer.
        Take one down and pass it around, #{number - 1} bottle#{ if number-1 == 1, do: "", else: "s"} of beer on the wall.
        """
      number == 1 ->
        """
        1 bottle of beer on the wall, 1 bottle of beer.
        Take it down and pass it around, no more bottles of beer on the wall.
        """
      number == 0 ->
        """
        No more bottles of beer on the wall, no more bottles of beer.
        Go to the store and buy some more, 99 bottles of beer on the wall.
        """
    end
  end

  @doc """
    Get the entire beer song for a given range of numbers of bottles.

    ## Examples

        iex> BeerSong.lyrics(99..98)
        "99 bottles of beer on the wall, 99 bottles of beer.\\nTake one down and pass it around, 98 bottles of beer on the wall.\\n
        98 bottles of beer on the wall, 98 bottles of beer.\\nTake one down and pass it around, 97 bottles of beer on the wall.\\n"
  """
  @spec lyrics(Range.t()) :: String.t()
  def lyrics(range) do
    range
    |> Enum.map(&verse(&1))
    |> Enum.join("\n")
  end

  def lyrics() do
    lyrics(99..0)
  end
end
