require './lib/enigma'
require './lib/keyoffset'
require 'pry'

RSpec.describe Keyoffset do

  before(:each) do
    @enigma = Enigma.new
  end

   it 'can construct a hash from key string' do
     @enigma.encrypt("hello world", "02715", "040895")
     binding.pry
     expect(@enigma.key_hash).to eq({:a=>2, :b=>27, :c=>71, :d=>15})
   end
end
