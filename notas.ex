defmodule HolaMundo do
  def mensaje do
    IO.puts("Hola mundo")
  end
end

#---------area de un cuadrado---------
defmodule Areas do
  def area_cuadrado(l) do
  l*l
  end
 end

#---------Perimetro---------
defmodule Geometria.Cuadrado do
  def perimetro(l) do
  4*l
  end
end

#---------Perimetro de un rectangulo---------
defmodule Geometria.Rectangulo do
  def perimetro(l1,l2) do
  2*l1 + 2*l2
  end
 end

#---------Modulos anidados---------
defmodule Geometria do
  defmodule Cuadrado do
    def perimetro(l) do
      4*l
    end
  end
  defmodule Rectangulo do
    def perimetro(l1,l2) do
      2*l1 + 2*l2
    end
  end
end

#---------Funciones condensadas---------
defmodule Geometria do
  def perimetro_cuadrado(l), do: 4*l
  def perimetro_rectangulo(l1,l2), do: 2*l1 + 2*l2
end

#---------Invocaciones internas---------
defmodule Geometria do
  def perimetro1(l), do: cuadrado(l)
  def perimetro2(l), do: Geometria.cuadrado(l)
  def cuadrado(l), do: 4*l
end

#---------Funcion publica y privada---------
defmodule TestPublicoPrivado do
  def funcion_publica(msg) do
    IO.puts("#{msg} publico")
    funcionprivada(msg)
  end
  #defp define una funcion privada
  defp funcion_privada(msg) do
    IO.puts("#{msg} privado")
  end
end

TestPublicoPrivado.funcion_publica("este es un mensaje")
