defmodule PrimeNumber do
  def get([ 1 | tail]), do: tail |> get
  def get([prime | tail]) do
    ans = tail |> Enum.filter(fn num -> rem(num,prime) != 0 end) |> get
    [prime | ans]
  end
  def get([]), do: []
  def get(range) do
    range |> Enum.to_list |> get
  end
end
