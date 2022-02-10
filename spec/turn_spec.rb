require 'pry'
require './lib/board.rb'
require './lib/turn.rb'


RSpec.describe Turn do

  before(:each) do
    @turn = Turn.new
  end

  it 'can create new turn' do
    expect(@turn).to be_an_instance_of(Turn)
  end

  it 'can create prompt' do
    expect(@turn.prompt).to eq('Select column A-G')
    expect(@turn.input).to eq()
  end

end
