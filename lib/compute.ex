defmodule Compute do

  def start do
    IO.puts "#{__MODULE__} at your service"
    loop()
  end

  def loop do 
    receive do
      msg -> IO.puts sum(msg)
    end
    loop()
  end


  def get_biggest_prime(num) do
     get_primes(num) |> List.last
  end

  def get_primes(num) do
    l = []
    final  = for n <- 1..num do
     if prime?(n), do: l ++n
    end
    Enum.filter(final, & !is_nil(&1))
  end

  def prime?(num) do
    list = Enum.to_list(2..(num-1))
    !Enum.any?(list, fn x -> rem(num, x) == 0 end)
  end

  defp sum(list) do
    Enum.sum(list)
  end



end
