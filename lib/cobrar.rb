module Cobrando
  CobroTamano = {
    "mediano" => 3000,
    "grande" => 5000,
    "pequeno" => 1000
  }

  CobroTipo = {
    "rubia" => 1000,
    "roja" => 2000,
    "negra" => 5000
  }
  Cobrar = -> tamano, tipo { CobroTamano.fetch(tamano) + CobroTipo.fetch(tipo)}.curry
end
