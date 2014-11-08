require_relative 'spec_helper'

describe Barracks do
  
  before :each do
    @barrack = Barracks.new
  end

  it 'has and knows its lumber stock' do
  expect(@barrack.lumber).to eq(500)
  end

end