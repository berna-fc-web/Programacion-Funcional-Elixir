#----------Operador Pipe---------

sum = 0
lista = [1,2,3,4,5]
lista = tl(lista)
IO.inspect(lista)
[num|lista] = lista
#para sacar el 2
IO.inspect(num)
IO.inspect(lista)
sum = sum + num
IO.inspect(sum)
#para sacar el 3
[num|lista] = lista
IO.inspect(num)
IO.inspect(lista)
sum = sum + num
IO.inspect(sum)
#para sacar el 4
[num|lista] = lista
IO.inspect(num)
IO.inspect(lista)
sum = sum + num
IO.inspect(sum)
#para sacar el 5
[num|lista] = lista
IO.inspect(num)
IO.inspect(lista)
sum = sum + num
IO.inspect(sum)
IO.puts("EL resultado es: #{sum*sum}")

#---------Solucion 1---------
defmodule PipeTest do
  def cuadrado(n), do: n*n
  def suma(lista) do
  Enum.sum(lista)
  end
 end
 IO.puts("#{PipeTest.cuadrado(PipeTest.suma(tl([1,2,3,4,5])))}")

 #----------Solucion 2------------
 defmodule PipeTest do
  def cuadrado(n), do: n*n
  def suma(lista) do
  Enum.sum(lista)
  end
  def csc(lista) do
  lista
  |> tl
  |> suma
  |> cuadrado
  end
 end
 IO.puts("#{PipeTest.csc([1,2,3,4,5])}")

#----------Debugging-----------
 defmodule PipeTest do
  def cuadrado(n), do: n*n
  def suma(lista) do
  Enum.sum(lista)
  end
  def csc(lista) do
  lista
  |> tl
  |> IO.inspect
  |> suma
  |> IO.inspect
  |> cuadrado
  end
 end
 Fundamentos de programación funcional con Erlang y Elixir,
 IO.puts("#{PipeTest.csc([1,2,3,4,5])}")
