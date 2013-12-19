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
      expect(Direction.right_of('S')).to eq 'W'
    end

    it 'should know north is right of west' do
      expect(Direction.right_of('W')).to eq 'N'
    end
  end

  context 'when turning left' do
    it 'should know west is left of north' do
      expect(Direction.left_of('N')).to eq 'W'
    end

    it 'should know south is left of west' do
      expect(Direction.left_of('W')).to eq 'S'
    end

    it 'should know east is left of south' do
      expect(Direction.left_of('S')).to eq 'E'
    end

    it 'should know north is left of east' do
      expect(Direction.left_of('E')).to eq 'N'
    end
  end
end
