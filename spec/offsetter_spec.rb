require './lib/enigma'
require './lib/keyoffset'
require './lib/dateoffset'
require './lib/offsetter.rb'
require 'pry'

RSpec.describe Offsetter do
  before(:each) do
    @enigma = Enigma.new
  end

  it 'can combine date_array with key_hash values' do
    @enigma.encrypt("hello world", "02715", "040895")
    # binding.pry
    expect(@enigma.offsetters).to eq({:a=>3, :b=>27, :c=>73, :d=>20})
  end
end
