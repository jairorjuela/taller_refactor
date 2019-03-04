class Vasos

  TamanoVasos = {
    "grande" => "Vaso grande",
    "mediano" => "Vaso mediano",
    "pequeno" => "Vaso pequeño"
  }

  def tamano(tamano)
    opciones = {
      true => -> { "escogiendo un vaso para tu cerveza tamaño #{tamano}" },
      false => -> { nuevo_tamano }
    }
    opciones[TamanoVasos.include?(tamano)].()
  end

  def nuevo_tamano
    tamano = "grande"
    "No tenemos esos tamaños de vasos, te daré uno #{tamano}"
  end

end
