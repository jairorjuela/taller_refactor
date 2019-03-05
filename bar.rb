require_relative 'saludar'
require_relative 'vasos'
require_relative 'pola'

class Bar

  Saluda = BuenosDias::Saludar
  Vaso = Vasos.new
  Cerveza = Pola.new

  def saludar_al_cliente(nombre)
    Saluda.(nombre)
  end

  def pedir_cerveza(tipo, tamano)
    Vaso.choose(tamano)
    Cerveza.serve_beer(tipo)
    cobrar_por_la_pola(Cerveza.tipo(tipo), Vaso.tamano(tamano))

    puts "Disfrute su cerveza, buen día"
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
