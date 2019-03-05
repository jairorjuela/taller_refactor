class Vasos

  TamanoVasos = {
    "grande" => "Vaso grande",
    "mediano" => "Vaso mediano",
    "pequeno" => "Vaso pequeño"
  }

  def choose(tamano)
    opciones = {
      true => -> { "escogiendo un vaso para tu cerveza tamaño #{tamano}" },
      false => -> { "No tenemos esos tamaños de vasos, te daré uno grande" }
    }
    opciones[TamanoVasos.include?(tamano)].()
  end

  def tamano(tamano)
    opciones = {
      true => -> { tamano },
      false => -> { tamano = "grande" }
    }
    opciones[TamanoVasos.include?(tamano)].()
  end

end
