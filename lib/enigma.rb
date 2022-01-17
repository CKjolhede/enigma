require 'Time'
require 'pry'
require './lib/keyoffset'
require './lib/dateoffset'
require './lib/offsetter'

class Enigma
  include Keyoffset, Dateoffset, Offsetter

  attr_reader :key, :date, :alphabet, :message, :direction

  def initialize
    @alphabet = ("a".."z").to_a << " "
  end

  def encrypt(message, key = rand(99999).to_s.rjust(5,"0"), date =(Time.now.strftime"%d%m%y").to_s)
    @direction = 1
    key_hash_generator(key)
    date_hash_generator(date)
    offset_combiner(key_hash, date_array)
    shift(message)
    p encryption_hash = { encryption: @translated_characters.join, key: key, date: date}
  end

  def decrypt(message, key = rand(99999).to_s.rjust(5,"0"), date =(Time.now.strftime"%d%m%y").to_s)
    @direction = (-1)
    key_hash_generator(key)
    date_hash_generator(date)
    offset_combiner(key_hash, date_array)
    shift(message)
    p decryption_hash = { decryption: @translated_characters.join, key: key, date: date}
  end
end
