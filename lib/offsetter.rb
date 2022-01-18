require './lib/enigma'
require './lib/keyoffset'
require './lib/dateoffset'
require 'pry'

module Offsetter
  attr_reader :offsetters, :characters, :translated_characters


  def offset_combiner(key_hash, date_array)
    @offsetters=Hash.new(0)
    @date_array_consumable = @date_array.clone
    @key_hash.each do |k,v|
      @offsetters[k]=(v + @date_array_consumable.shift.to_i)
    end
  end

  def shift(message)
    @translated_characters = []
    @characters = message.downcase.chars
    @characters.each_with_index do |character, index_id|
      original_index = @alphabet.index(character)
      if index_id % 4 == 0
        rotated_alphabet = @alphabet.rotate(@offsetters[:a] * @direction)
        @translated_characters << rotated_alphabet[original_index]
      elsif index_id % 4 == 1
        rotated_alphabet = @alphabet.rotate(@offsetters[:b] * @direction)
        @translated_characters << rotated_alphabet[original_index]
      elsif index_id % 4 == 2
        rotated_alphabet = @alphabet.rotate(@offsetters[:c] * @direction)
        @translated_characters << rotated_alphabet[original_index]
      else index_id % 4 == 3
        rotated_alphabet = @alphabet.rotate(@offsetters[:d] * @direction)
        @translated_characters << rotated_alphabet[original_index]
      end
    end
  end

end
