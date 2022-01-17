require './lib/enigma'
require 'pry'

module Keyoffset
  attr_reader :key_hash

  def key_hash_generator(key)
    @key_hash = { a: key.slice(0,2).to_i,
      b: key.slice(1,2).to_i,
      c: key.slice(2,2).to_i,
      d: key.slice(3,2).to_i }
    @key_hash
  end
end
