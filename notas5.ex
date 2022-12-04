#------------Dias de la semana------------

#-----------Ejemplo 1 de dias de la semana-------------
defmodule DiaSemana do
  def dia(d) do
    cond do
      d == 1 -> "Lunes"
      d == 2 -> "Martes"
      d == 3 -> "Miercoles"
      d == 4 -> "Jueves"
      d == 5 -> "Viernes"
      d == 6 -> "Sabado"
      d == 7 -> "Domingo"
      true -> "Dia no valido"
    end
  end
end

IO.puts DiaSemana.dia(1)
IO.puts DiaSemana.dia(2)
IO.puts DiaSemana.dia(3)
IO.puts DiaSemana.dia(4)
IO.puts DiaSemana.dia(5)
IO.puts DiaSemana.dia(6)
IO.puts DiaSemana.dia(7)
IO.puts DiaSemana.dia(8)

#----------------Ejemplo 2 de dias de la semana---------------
defmodule DiaSemana do
  def dia(d) do
    cond do
      d == "l" or d == "L" -> "Lunes"
      d == "ma" or d == "MA" -> "Martes"
      d == "mi" or d == "MI" -> "Miercoles"
      d == "j" or d == "J" -> "Jueves"
      d == "v" or d == "V" -> "Viernes"
      d == "s" or d == "S" -> "Sabado"
      d == "d" or d == "D" -> "Domingo"
      true -> "Dia no valido"
    end
  end
end

IO.puts DiaSemana.dia("l")
IO.puts DiaSemana.dia("ma")
IO.puts DiaSemana.dia("mi")
IO.puts DiaSemana.dia("j")
IO.puts DiaSemana.dia("v")
IO.puts DiaSemana.dia("s")
IO.puts DiaSemana.dia("d")

IO.puts DiaSemana.dia("L")
IO.puts DiaSemana.dia("MA")
IO.puts DiaSemana.dia("MI")
IO.puts DiaSemana.dia("J")
IO.puts DiaSemana.dia("V")
IO.puts DiaSemana.dia("S")
IO.puts DiaSemana.dia("D")

IO.puts DiaSemana.dia("Ma")
IO.puts DiaSemana.dia("mA")

#-------------Ejemplo 3 de dias de la semana-------------

defmodule DiaSemana do
  def dia(d) do
    d = String.upcase(d)
    cond do
      d == "L" -> "Lunes"
      d == "MA" -> "Martes"
      d == "MI" -> "Miercoles"
      d == "J" -> "Jueves"
      d == "V" -> "Viernes"
      d == "S" -> "Sabado"
      d == "D" -> "Domingo"
      true -> "Dia no valido"
    end
  end
end

IO.puts DiaSemana.dia("l")
IO.puts DiaSemana.dia("ma")
IO.puts DiaSemana.dia("mi")
IO.puts DiaSemana.dia("j")
IO.puts DiaSemana.dia("v")
IO.puts DiaSemana.dia("s")
IO.puts DiaSemana.dia("d")

IO.puts DiaSemana.dia("L")
IO.puts DiaSemana.dia("MA")
IO.puts DiaSemana.dia("MI")
IO.puts DiaSemana.dia("J")
IO.puts DiaSemana.dia("V")
IO.puts DiaSemana.dia("S")
IO.puts DiaSemana.dia("D")

IO.puts DiaSemana.dia("Ma")
IO.puts DiaSemana.dia("mA")
