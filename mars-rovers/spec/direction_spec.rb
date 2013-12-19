require './lib/direction'

describe Direction do

  def right_of(direction)
    Direction.right_of(direction)
  end

  def left_of(direction)
    Direction.left_of(direction)
  end

  context 'when turning right' do
    it 'should know east is right of north' do
      expect(right_of('N')).to eq 'E'
    end

    it 'should know south is right of east' do
      expect(right_of('E')).to eq 'S'
    end

    it 'should know west is right of south' do
      expect(right_of('S')).to eq 'W'
    end

    it 'should know north is right of west' do
      expect(right_of('W')).to eq 'N'
    end
  end

  context 'when turning left' do
    it 'should know west is left of north' do
      expect(left_of('N')).to eq 'W'
    end

    it 'should know south is left of west' do
      expect(left_of('W')).to eq 'S'
    end

    it 'should know east is left of south' do
      expect(left_of('S')).to eq 'E'
    end

    it 'should know north is left of east' do
      expect(left_of('E')).to eq 'N'
    end
  end
end
