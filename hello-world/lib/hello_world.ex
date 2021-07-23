defmodule HelloWorld do
  @doc """
    Simply returns "Hello, World!"

  ## Examples

      iex> HelloWorld.hello
      "Hello, World!"
  """
  @spec hello :: String.t()
  def hello do
    "Hello, World!"
  end
end
