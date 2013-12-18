require './lib/plateau'

describe Plateau do

  context 'a new Plateau' do

    let(:plateau) { Plateau.new }

    it 'should have a default width of 5' do
      expect(plateau.width).to eq 5
    end

    it 'should have a default height of 5' do
      expect(plateau.height).to eq 5
    end

  end

end 