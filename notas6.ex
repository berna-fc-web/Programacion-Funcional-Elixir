#--------Unless---------

#-----------Ejemplo 1 de unless----------
defmodule MayorDeEdad do
  def mayor1(edad) do
    unless edad >= 18 do
      "Es menor de edad"
    end
  end
end

#-------------Ejemplo 2 de unless---------------

defmodule MayorDeEdad do
  def mayor1(edad) do
    unless edad >= 18 do
      "Es menor de edad"
    end
  end
  def mayor2(edad) do
    if edad < 18 do
      "Es menor de edad"
    end
  end
end


