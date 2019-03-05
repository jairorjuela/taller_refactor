require_relative "../bar"

RSpec.describe Bar do

  before(:each) do
    @greet = BuenosDias::Saludar
    @glases = Vasos.new
    @beer = Pola.new
  end

  describe "whe the input is correct" do
    it 'is include module "saludar"' do
      greet = @greet.("jairo")
      expect(greet).to eq("Buenos días, mi nombre es jairo")
    end

    it 'is include method "choose"' do
      glass = @glases
      choose = glass.choose("grande")
      expect(choose).to eq("escogiendo un vaso para tu cerveza tamaño grande")
    end

    it 'is include method "tamano"' do
      glass = @glases
      size = glass.tamano("grande")
      expect(size).to eq("grande")
    end

    it 'is include method "serve_beer"' do
      pola = @beer
      tipo = pola.tipo("negra")
      expect(tipo).to eq("negra")
    end
  end

end
