require './lib/date'

class Enigma
  attr_reader :string, :key, :date

  def initialize(data)
    @string = data[:string]
    @key = data[:key]
    @date = data[:date]
  end

  def encrypt(@string, @key, @date)
  




end
