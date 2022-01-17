require './lib/keyoffset'
require './lib/enigma'
require 'pry'

RSpec.describe Keyoffset do

  before(:each) do
    @enigma = Enigma.new
  end

  it "can create keyoffsets hash" do
    @enigma.encrypt('hello world', "11111", "010121")
  expect(key_hash).to be_a(Hash)
  end


end
