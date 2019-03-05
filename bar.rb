require_relative 'saludar'
require_relative 'vasos'


class Bar

  TipoPola = { roja: "Pola roja", rubia: "Pola Rubia", negra: "La mas deli: negrita" }
  Saluda = BuenosDias::Saludar
  Vaso = Vasos.new

#Greet of client first
  def saludar_al_cliente(nombre)
    Saluda.(nombre)
  end

  def pedir_cerveza(tipo, tamano)
    Vaso.choose(tamano)
    abrir_llave_de_cerveza_tipo(tipo)
    cobrar_por_la_pola(tipo, Vaso.tamano(tamano))

    puts "Disfrute su cerveza, buen día"
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
