class Pola

  TipoPola = {
    "roja" => "Pola roja",
    "rubia" => "Pola Rubia",
    "negra" => "La mas deli negrita"
  }

  def serve_beer(tipo)
    opciones = {
      true => -> { abrir_llave_de_cerveza_tipo(tipo) },
      false => -> { "No tenemos ese tipo de cerveza, te daré una rubia" }
    }
    opciones[TipoPola.include?(tipo)].()
  end

  def abrir_llave_de_cerveza_tipo(tipo)
    puts "abriendo llave de #{tipo}"
    puts "sirviendo cerveza, se ve deli"
    puts "te estoy entregando tu cerveza"
  end

  def tipo(tipo)
    opciones = {
      true => -> { tipo },
      false => -> { tipo = "rubia" }
    }
    opciones[TipoPola.include?(tipo)].()
  end

end
