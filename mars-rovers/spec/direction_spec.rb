require './lib/direction'

describe Direction do

  context 'when turning right' do
    it 'should know east is right of north' do
      expect(Direction.right_of('N')).to eq 'E'
    end

    it 'should know south is right of east' do
      expect(Direction.right_of('E')).to eq 'S'
    end

    it 'should know west is right of south' do
      expect(Direction.right_of('E')).to eq 'S'
    end
  end
end
