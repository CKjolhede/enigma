require './lib/enigma'
require 'pry'

module Dateoffset
  attr_reader :date

  def date_hash_generator(date)
    @date = (date.to_i * date.to_i).to_s.slice(-4,4)
    binding.pry
  end

end
