require './lib/enigma'
require './lib/offsetter'
require './lib/keyoffset'
require 'pry'

module Dateoffset
  attr_reader :date, :date_array, :date_transformed

  def date_hash_generator(date)
    @date_array = []
    @date_transformed = (date.to_i * date.to_i).to_s.slice(-4,4)
    @date_array = @date_transformed.split("")
  end
end
