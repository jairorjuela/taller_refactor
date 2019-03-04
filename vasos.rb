class Vasos

  TamanoVasos = { "grande" => "Vaso grande", "mediano" => "Vaso mediano", "pequeno" => "Vaso pequeño" }


  def tamano(tamano)
    puts "escogiendo un vaso para tu cerveza tamaño #{tamano}"
    opciones = {
      true => -> { "escogiendo un vaso para tu cerveza tamaño #{tamano}" },
      false => -> { "No tenemos esos tamaños de vasos, te daré uno grande" }
    }
    opciones[TamanoVasos.include?(tamano)].()
  end

end





    def escoger_vaso(tamano)
      puts "escogiendo un vaso para tu cerveza tamaño #{tamaño}"
      puts TamanoVasos.has_key?(tamano) ? TamanoVasos[tamano] : "No tenemos esos tamaños de vaso, te daré uno grande"
    end
