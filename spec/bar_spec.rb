require_relative "../bar"

RSpec.describe Bar do

  before(:each) do
    @greet = BuenosDias::Saludar
  end

  describe "whe the input is correct" do
    it 'is include module "saludar"' do
      greet = @greet.("jairo")
      expect(greet).to eq("Buenos días, mi nombre es jairo")
    end
  end

end
