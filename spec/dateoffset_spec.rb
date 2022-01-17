require './lib/enigma'
require './lib/dateoffset'
require 'pry'

RSpec.describe Dateoffset do
  before(:each) do
    @enigma = Enigma.new
  end

  it 'can retrieve data from enigma class and calculate date conversion' do
    @enigma.encrypt("hello world", "02715", "040895")
  expect(@enigma.date).to eq("1025")
  end

end
