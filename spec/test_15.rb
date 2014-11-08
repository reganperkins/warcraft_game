require_relative 'spec_helper'

describe Siege_Engine do

  before :each do
    @canon = Siege_Engine.new
    @barrack = Barracks.new
  end

  it "has and knows its HP (health points)" do
    expect(@canon.health_points).to eq(400)
  end

  it "has and knows its AP (attack points)" do
    expect(@canon.attack_power).to eq(50)
  end

  describe '#attack!' do
    
    it 'will only attack instances of Siege Engines and Burracks' do
      @footmen = Footman.new
      expect(@canon.attack!(@footman)).to eq(false)
    end

    it 'will attack other instances of Siege Engin' do
      @enemy_canon = Siege_Engine.new
      @canon.attack!(@enemy_canon)
      # @enemy_canon.should_receive(:damage).with(50)
      expect(@enemy_canon.health_points).to eq(350)

    end

    it 'will attack other instances of Burracks with double power' do
      @enemy_barracks = Barracks.new
      @canon.attack!(@enemy_barracks)
      expect(@enemy_barracks.health_points).to eq(400)
    end

  end

end