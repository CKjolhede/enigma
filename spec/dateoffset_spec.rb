require './lib/enigma'
require './lib/dateoffset'
require 'pry'

RSpec.describe Dateoffset do
  include Dateoffset
  before(:each) do
    @enigma = Enigma.new
    @enigma.encrypt("hello world", "02715", "040895")
  end

  it 'can retrieve data from enigma class and calculate date conversion' do
    # @enigma.encrypt("hello world", "02715", "040895")
  expect(@enigma.date_transformed).to eq("1025")
  end

  it 'can transform string into an array' do
    binding.pry
    expect(@enigma.date_array).to eq(["1", "0", "2", "5"])
  end

end
