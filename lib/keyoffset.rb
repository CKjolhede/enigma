require './lib/enigma'
require 'pry'

module Keyoffset
  attr_reader :key_offsets

  def key_values(key_hash)
    key_hash[:a]=(key[0,2].to_i)
  end

end
