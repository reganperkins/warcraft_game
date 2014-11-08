require 'spec_helper'

describe Unit do

  before :each do
    @footman = Footman.new
  end

  describe '#dead?' do 
    it 'should return true if HP is less then or equal to 0' do
      @footman.damage(60)
      expect(@footman.dead?).to eq(true)
    end
  end

end