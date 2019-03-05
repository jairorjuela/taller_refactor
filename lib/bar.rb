require_relative 'saludar'
require_relative 'vasos'
require_relative 'pola'
require_relative 'cobrar'

class Bar

  Saluda = BuenosDias::Saludar
  Vaso = Vasos.new
  Cerveza = Pola.new
  Cobra = Cobrando::Cobrar

  def saludar_al_cliente(nombre)
    Saluda.(nombre)
  end

  def pedir_cerveza(tamano, tipo)
    Vaso.choose(tamano)
    Cerveza.serve_beer(tipo)
  end

  def cobrar_por_la_pola(tamano, tipo)
    "Serían #{Cobra.(Vaso.tamano(tamano), Cerveza.tipo(tipo))} pesos por favor"
    "Disfrute su cerveza, buen día"
  end

end
