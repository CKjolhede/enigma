require 'Time'
require 'pry'
require './lib/keyoffset'
require './lib/dateoffset'

class Enigma
  include Keyoffset, Dateoffset
  attr_reader :key, :date, :alphabet, :message

  def initialize
    @alphabet = ("a".."z").to_a << " "
  end

  def encrypt(message, key = rand(99999).to_s, date =(Time.now.strftime"%d%m%y").to_s)
    # key_hash = key_hash_generator(key)
    key_hash_generator(key)
    date_hash_generator(date)
  end
end
