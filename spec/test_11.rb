require_relative 'spec_helper'

describe Barracks do

  before :each do
    @barrack = Barracks.new
  end

  it 'starts with 500 health_points' do
    expect(@barrack.health_points).to eq(500)
  end
  
  describe '#damage' do
    it 'halves the attack power of footmen rounded down' do
      @barrack.damage(11)
      expect(@barrack.health_points).to eq(495)
    end
  end

end


