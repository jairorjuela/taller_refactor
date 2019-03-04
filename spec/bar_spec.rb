require_relative "../bar"

RSpec.describe Bar do

  before(:each) do
    @greet = BuenosDias::Saludar
    @glases = Vasos.new
  end

  describe "whe the input is correct" do
    it 'is include module "saludar"' do
      greet = @greet.("jairo")
      expect(greet).to eq("Buenos días, mi nombre es jairo")
    end

    it 'is include class "Vasos"' do
      glass = @glases
      size = glass.tamano("grande")
      expect(size).to eq("escogiendo un vaso para tu cerveza tamaño grande")
    end
  end

end
