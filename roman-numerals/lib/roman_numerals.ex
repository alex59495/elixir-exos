defmodule RomanNumerals do
  @doc """
  Convert the number to a roman number.
  """
  @spec numeral(pos_integer) :: String.t()

  def get_number(list, num) do
    case num do
      1000 -> list <> "M"
      900 -> list <> "CM"
      500 -> list <> "D"
      400 -> list <> "CD"
      100 -> list <> "C"
      90 -> list <> "XC"
      50 -> list <> "L"
      40 -> list <> "XL"
      10 -> list <> "X"
      9 -> list <> "IX"
      5 -> list <> "V"
      4 -> list <> "IV"
      1 -> list <> "I"
      0 -> list
    end
  end

  def numeral(number, list \\ "") do
    cond do
      number >= 1000 ->
        list = get_number(list, 1000)
        numeral(number - 1000, list)
      number >= 900 ->
        list = get_number(list, 900)
        numeral(number - 900, list)
      number >= 500 ->
        list = get_number(list, 500)
        numeral(number - 500, list)
      number >= 400 ->
        list = get_number(list, 400)
        numeral(number - 400, list)
      number >= 100 ->
        list = get_number(list, 100)
        numeral(number - 100, list)
      number >= 90 ->
        list = get_number(list, 90)
        numeral(number - 90, list)
      number >= 50 ->
        list = get_number(list, 50)
        numeral(number - 50, list)
      number >= 40 ->
        list = get_number(list, 40)
        numeral(number - 40, list)
      number >= 10 ->
        list = get_number(list, 10)
        numeral(number - 10, list)
      number >= 9 ->
        list = get_number(list, 9)
        numeral(number - 9, list)
      number >= 5 ->
        list = get_number(list, 5)
        numeral(number - 5, list)
      number >= 4 ->
        list = get_number(list, 4)
        numeral(number - 4, list)
      number >= 1 ->
        list = get_number(list, 1)
        numeral(number - 1, list)
      true ->
        get_number(list, 0)
    end
  end
end
