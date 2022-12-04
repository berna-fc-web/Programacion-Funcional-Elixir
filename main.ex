import ModuloImportado

defmodule ModuloMain do
  def main do
    IO.puts("Funcion main")
    funcion_importada("Esta funcion es importada")
  end
end

defmodule ModuloImportado do
  def funcion_importada(msg) do
    IO.puts(msg)
  end
end

defmodule ModuloMain do
  def main do
    IO.puts("Funcion main")
    ModuloImportado.funcion_importada("Esta funcion es importada")
  end
end

defmodule ModuloMain do
  alias ModuloImportado, as: MI

  def main do
  IO.puts("Funcion main")
  MI.funcion_importada("Esta funcion es importada con alias")
  end
 end
