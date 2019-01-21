defmodule Multi do
  def add(a,b) do
    IO.puts(a + b)
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
end
