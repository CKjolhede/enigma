require 'simplecov'
require './lib/date'
require './lib/keychange'
require './lib/enigma'
require './lib/keychange'

RSpec.describe Keychange do

  before(:each) do
    @keychange = Keychange.new(@key)
  end
    it "can create keychange instance" do
  expect(@keychange).to be_a(Keychange)
  end


end
