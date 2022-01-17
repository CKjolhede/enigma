require './lib/date'

class Enigma
  attr_reader :text, :key, :date, :alphabet

  def initialize # => (message , key: rand(99999), date: nil)
    @alphabet = ("a".."z").to_a << " "
  end
end

  # def encrypt(@string, @key, @date)
  # @text = data[message]
  # @key = data[key]
  # @date = data[date]  #(Time.new.strftime("%d%m%y")))
#
#     # @string.encryped_string
#
# def key_encryption
#
#     end
#
# end
