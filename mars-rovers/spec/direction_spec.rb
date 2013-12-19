require './lib/direction'

describe Direction do
  it 'should know east is right of north' do
    expect(Direction.right_of('N')).to eq 'E'
  end
end
