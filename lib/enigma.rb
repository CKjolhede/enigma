require 'Time'
require 'pry'
require './lib/keyoffset'
require './lib/dateoffset'
require './lib/offsetter'

class Enigma
  include Keyoffset, Dateoffset, Offsetter

  attr_reader :key, :date, :alphabet, :message

  def initialize
    @alphabet = ("a".."z").to_a << " "
  end

  def encrypt(message, key = rand(99999).to_s, date =(Time.now.strftime"%d%m%y").to_s)
    @message = message
    @key = key
    # key_hash = key_hash_generator(key)
    key_hash_generator(key)
    date_hash_generator(date)
    offset_combiner(key_hash, date_array)
    shift(message)
  end
end
