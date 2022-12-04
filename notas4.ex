#-----------Concatenación de Cadenas-----------
defmodule Cadena do
  def concatenar(cad1, cad2, separador \\ " ") do
    cad1 <> separador <> cad2
  end
end

#-----------Pattern Matching-Funciones-----------
defmodule Calculadoraa do
  def div(_,0) do
    {:error, "No se puede dividir por cero"}
  end
  def div(n1,n2) do
    {:ok, "El resultado es: #{n1/n2}"}
  end
end

#-----------Guardas-----------
defmodule Numero do
  def cero?(0), do: true
  def cero?(n) when is_integer(n), do: false
  def cero?(_), do: "No es entero"
end

#-----------Condicionales-----------
#if
defmodule Personal do
  def sexo(sex) do
    if sex == :m do
      "Masculino"
    else
      "Femenino"
    end
  end
end

defmodule Persona2 do
  def sexo(sex) do
    if sex == :m do
      "Masculino"
    else if sex == :f do
      "Femenino"
    else
      "Sexo desconocido"
    end
    end
  end
end

#-----------Case-----------
defmodule Persona3 do
  def sexo(sex) do
    case sex do
      :m -> "Masculino"
      :f -> "Femenino"
      _ -> "Sexo Desconocido"
    end
  end
end

#-----------Match con funciones-----------
#Ejemplo 1
defmodule Persona4 do
  def sexo(sex) when sex == :m do
    "Masculino"
  end
  def sexo(sex) when sex ==:f do
    "Femenino"
  end
  def sexo(_sex) do
    "Sexo desconocido"
  end
end

#------------Casos de calculadora------------
defmodule Matematicas do
  def calculadora(opcion,{n1,n2}) do
    case opcion do
      "+" -> n1+n2
      "-" -> n1-n2
      "/" when n2 != 0 -> n1/n2
      "/" when n2 == 0 -> "No se puede dividir por 0"
      "*" -> n1*n2
      _ -> :error
    end
  end
end

IO.inspect Matematicas.calculadora("+",{5,4})
IO.inspect Matematicas.calculadora("-",{5,4})
IO.inspect Matematicas.calculadora("/",{5,4})
IO.inspect Matematicas.calculadora("/",{5,0})
IO.inspect Matematicas.calculadora("*",{5,4})
