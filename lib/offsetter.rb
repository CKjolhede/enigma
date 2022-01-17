require './lib/enigma'
require './lib/keyoffset'
require './lib/dateoffset'
require 'pry'

module Offsetter
  attr_reader :offsetters


  def offset_combiner(key_hash, date_array)
    @offsetters=Hash.new(0)
    @key_hash.each do |k,v|
    @offsetters[k]=(v + @date_array.shift.to_i)
    end

    @offsetters
    # binding.pry
  end

end
