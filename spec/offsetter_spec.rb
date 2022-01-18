require './lib/enigma'
require './lib/keyoffset'
require './lib/dateoffset'
require './lib/offsetter.rb'
require 'pry'

RSpec.describe Offsetter do
  before(:each) do
    @enigma = Enigma.new
    @enigma.encrypt("hello world", "02715", "040895")
  end

  it 'has a working @offset_combiner to combine date_array with key_hash values' do
    expect(@enigma.offsetters).to eq({:a=>3, :b=>27, :c=>73, :d=>20})
  end

  it 'can transform message into an array of characters' do
    expect(@enigma.characters).to eq(["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d"])
  end

  it 'can translate characters based upon its index in character array' do
    expect(@enigma.translated_characters).to eq(["k", "e", "d", "e", "r", " ", "o", "h", "u", "l", "w"])
  end
end
