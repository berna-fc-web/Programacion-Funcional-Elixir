#--------Loops y Recursion-----------

#---------For----------
#--------Ejemplo 1---------
for x <- 1..10 do
  IO.puts(x)
 end

#--------Ejemplo 2---------
sum =for x <- 1..10 do
  x
end
IO.puts Enum.sum(sum)

#IO.puts Enum.sum(1..10)//Expresado en una sola linea

#------------Ejercicios de recursion-----------
#------Hacer un programa recursivo que imprima n veces un mensaje-----
defmodule Repetir do
  def imprimir(msg, n) when n<= 1 do
    IO.puts("#{n}: #{msg}")
  end

  def imprimir(msg, n) do
    IO.puts("#{n}: #{msg}")
    imprimir(msg, n-1)
  end
end
Repetir.imprimir("Hola",10)

#-----------Invertir el orden de los numeros----------
defmodule Repetir do
  def imprimir(msg, n,ls) when n>= ls do
    IO.puts("#{n}: #{msg}")
  end

  def imprimir(msg, n,ls) do
    IO.puts("#{n}: #{msg}")
    imprimir(msg, n+1,ls)
  end
end
Repetir.imprimir("Hola",1,10)

#-----Escribir un programa recursivo que sume todos los elementos de una serie de números en una lista-----
defmodule Matematicas do
  def sum_list([], suma), do: suma
  def sum_list([head|tail], suma) do
  sum_list(tail, suma+head)
  end
  end
  IO.puts(Matematicas.sum_list([1,2,3,4,5,6,7,8,9,10],0))
  IO.puts(Matematicas.sum_list([1,3,5,7,9,10,15],0))

#----Obtener el promedio de 10 calificaciones entre 0 y 10 almacenadas en una lista-----
defmodule Matematicas do
  def sum_list([], suma), do: suma
  def sum_list([head|tail], suma) do
    sum_list(tail, suma+head)
  end
end
IO.puts(Matematicas.sum_list([10,5,9,9,8,5,7,9,6,5],0)/10)

#---Crear una función promedio que calcule el promedio de 10 calificaciones almacenadas en una
#lista entre 0 y 10---
defmodule Matematicas do
  def sum_list([], suma), do: suma
  def sum_list([head|tail], suma) do
    sum_list(tail, suma+head)
  end
  def promedio(calificaciones, n) do
    sum_list(calificaciones,0)/n
  end
end
IO.puts(Matematicas2.promedio([10,5,9,9,8,5,7,9,6,5],10))

#---------Calcular el promedio de n calificaciones entre 0 y 10 en una lista---------
defmodule Matematicas do
  def sum_list([], suma), do: suma
  def sum_list([head|tail], suma) do
    sum_list(tail, suma+head)
  end
  def promedio(calificaciones) do
    sum_list(calificaciones,0)/Enum.count(calificaciones)
  end
end
IO.puts(Matematicas.promedio([10,5,9,9,8,5,7,9,6,5]))

#-----Modulo Enum---------
calificaciones = [10,5,9,9,8,5,7,9,6,5]
IO.puts Enum.sum(calificaciones)/Enum.count(calificaciones)
