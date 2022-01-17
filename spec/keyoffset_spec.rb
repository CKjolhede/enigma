require './lib/keyoffset'
require './lib/enigma'
require 'pry'

RSpec.describe Keyoffset do

  before(:each) do
    @enigma = Enigma.new
  end

end
