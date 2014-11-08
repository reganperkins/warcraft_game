require 'spec_helper'

describe Unit do

  before :each do
    @unit = Unit.new(60, 10)
  end

  describe '#attack!' do 
    it 'it should only attack another unit if it is not dead and the ememy is not dead' do
      @enemy = Unit.new(0,0)

      # @enemy.damage(60)
      # @unit.attack!(@enemy)
      expect(@unit.attack!(@enemy)).to eq('Looks like someone beat me to it!')
    end
  end

end