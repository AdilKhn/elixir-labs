defmodule Multi do
  def add(a,b) do
    IO.puts(a + b)
  end

  def is_prime(n) do
    Enum.each(2..n, &check(n, &1))
  end



  def listen do
    receive do
      {:ok, "hello"} -> IO.puts("World")
      {:ok, "bye"} -> IO.puts("Dunya")
      {:ok, []} -> IO.puts("You gave a collection")
      {:ok, parms} -> IO.puts(inspect parms)
    end

    listen()
  end

  defp check(n,x) do
    IO.puts("n,x #{n}, #{x}")
    cond do
      rem(n,x) > 0 ->
        IO.puts(false)
      rem(n,x) == 0 -> 
        IO.puts(true)
    end
  end
end
