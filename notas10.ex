#-------n calificaciones aleatorias entre 0 y 10 y obtener su promedio---------
max = 50
calificaciones = for _x <- 1..max do
  Enum.random(0..10)
end
IO.inspect(calificaciones)
IO.puts Enum.count(calificaciones)
IO.puts Enum.sum(calificaciones)/Enum.count(calificaciones)

#--------Modulo de calificaciones aleatorias---------
defmodule Estadistica do
  def promedio(max_cal, _li, _ls) when max_cal <= 1 do
    :error
  end
  def promedio(max_cal, li, ls) when max_cal > 1 do
    calificaciones = for _x <- 1..max_cal do
      Enum.random(li..ls)
  end
  Enum.sum(calificaciones)/Enum.count(calificaciones)
  end
end
IO.puts Estadistica.promedio(50,1,15)
IO.puts Estadistica.promedio(-5,1,15)

#-----Programa que cuente de manera creciente de límite inferior a límite superior------
defmodule For_range do
  def for_to(n,ls) when n > ls do
    IO.puts "error"
  end
  def for_to(n,ls) when n >= ls do
    IO.puts n
  end
  def for_to(n,ls) do
    IO.puts n
    for_to(n + 1,ls)
  end
end
IO.puts("Contar de 1 a 10")
For_range.for_to(1,10)

IO.puts("Contar de 12 a 5")
For_range.for_to(12,5)

#------Programa que sume los valores de los números consecutivos-------
defmodule For_range do
  def for_to(n,ls) when n >= ls do
    n
  end

  def for_to(n,ls) do
    n + for_to(n + 1,ls)
  end
end
IO.puts("suma de los numeros de 1 a 10")
IO.puts For_range.for_to(1,10)

IO.puts("suma de los numeros 5 a 12")
IO.puts For_range.for_to(5,12)
