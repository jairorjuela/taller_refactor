require_relative 'saludar'

class Bar

  TamanoVasos = { grande: "Vaso grande", mediano: "Vaso mediano", pequeno: "Vaso pequeño" }
  TipoPola = { roja: "Pola roja", rubia: "Pola Rubia", negra: "La mas deli: negrita" }
  Saluda = BuenosDias::Saludar

#Greet of client first
  def saludar_al_cliente(nombre)
    Saluda.(nombre)
  end

  def pedir_cerveza(tipo, tamano)
    escoger_vaso(tamano)
    abrir_llave_de_cerveza_tipo(tipo)
    cobrar_por_la_pola(tipo, tamano)

    puts "Disfrute su cerveza, buen día"
  end


  def escoger_vaso(tamano)
    puts "escogiendo un vaso para tu cerveza tamaño #{tamaño}"
    puts TamanoVasos.has_key?(tamano) ? TamanoVasos[tamano] : "No tenemos esos tamaños de vaso, te daré uno grande"
  end

  def abrir_llave_de_cerveza_tipo(tipo)
    puts "abriendo llave de #{TipoPola[tipo]}"
    puts "sirviendo cerveza, se ve deli"
    puts "te estoy entregando tu cerveza"
  end

  def cobrar_por_la_pola(tipo, tamano)
    costo = 0
    if tamano.eql?(:mediano)
      costo = costo + 3000
    end
    if tamano.eql?(:grande)
      costo = costo + 5000
    end
    if tamano.eql?(:pequeno)
      costo = costo + 1000
    end
    if tipo.eql?(:rubia)
      costo = costo + 1000
    end
    if tipo.eql?(:roja)
      costo = costo + 2000
    end
    if tipo.eql?(:negra)
      costo = costo + 5000
    end
    puts "Serían #{costo} pesos por favor"
  end
end
