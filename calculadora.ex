#<---------Calculadora simple--------->

  defmodule Calculadora do #Modulo principal
  def suma(n1,n2) do #Modulo de suma
    n1 + n2
  end
  def resta(n1,n2) do #Modulo de resta
    n1 - n2
  end
  def multiplicacion(n1,n2) do #Modulo de
    n1 * n2
  end
  def division(n1,n2)do
    n1 / n2
  end
end

#---------Version corta de Calculadora simple----------
defmodule CalCorta do
  def suma(n1,n2), do: n1+n2
  def resta(n1,n2), do: n1-n2
  def multiplicacion(n1,n2), do: n1*n2
  def division(n1,n2), do: n1/n2
end

#---------Impresion de datos----------
defmodule DistCalculator do
  def suma(n1,n2) do
    IO.puts(n1+n2) #impresion de datos
  end
end
