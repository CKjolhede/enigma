require 'Time'
require 'pry'
require './lib/keyoffset'

class Enigma
  # include Keyoffset
  attr_reader :key, :date, :alphabet, :message

  def initialize
    @alphabet = ("a".."z").to_a << " "
  end
  #
  # def encrypt(message, key = rand(99999).to_s, date =(Time.now.strftime"%d%m%y").to_s)
  # end
end
