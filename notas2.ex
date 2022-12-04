
#---------Invocacion de funciones---------
defmodule Operaciones do
  def suma(n1,n2), do: n1 + n2
  def cuadrado(n), do: n * n
end

#---------Modulo test---------
defmodule Operaciones do
  def suma(n1,n2), do: n1+n2
  def cuadrado(n), do: n * n
end
defmodule Test do
  def start do
    4 |> Operaciones.suma(5) |>Operaciones.cuadrado
  end
end

#---------Funciones con diferente aridad---------
defmodule Rectangulo do
  def area(l) do
    l * l
  end
  def area(l1,l2) do
    l1 * l2
  end
end

#---------Funciones dependinete con diferente aridad---------
defmodule Calculadora do
  def suma(n) do
  suma(n,0)
  end
  def suma(n1,n2) do
  n1 + n2
  end
 end

#---------Especificacion de argumentos mediante el operador---------
defmodule Calculadora do
  def suma(n1,n2 \\ 0) do
  n1 + n2
  end
 end

#---------Combinacion de argumentos---------
 defmodule Calculadora do
  def funcion(n1,n2 \\ 0, n3 \\ 1, n4, n5 \\ 2) do
  n1 + n2 + n3 + n4 + n5
  end
 end
