require './lib/date'

class Enigma

  def initialize(data)
    @string = data[:text]
    @key = data[:key]
    @date = data[:date]
  end
end
