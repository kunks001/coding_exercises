require './lib/direction'

describe Direction do

  context 'when turning right' do

    example "should know which direction to end up facing" do

      directions = ['N','E','S','W'].map{|d| Direction.right_of(d)}
      expect(directions).to eq ['E','S','W','N']

    end

  end

  context 'when turning left' do

    example "should know which direction to end up facing" do

      directions = ['N','E','S','W'].map{|d| Direction.left_of(d)}
      expect(directions).to eq ['W','N','E','S']
      
    end

  end
end
