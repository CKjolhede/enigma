require './lib/enigma'

# class Enigma
#   attr_reader :message, :key, :date
#
#   def initialize (key)
#   end
#
#   def encrypt(data)
#     @key = key.to_s.rjust(5,"0")
#     @date = Time.new.strftime("%d%m%y").to_s
#     keyhash(@key)
#   end
#
#   def keyhash(key)
#     keyA = @key.slice(0,2)
#     @key_offset = Hash.new("A", (@key.slice(0,2)).to_i,"B", (@key.slice(1,2)).to_i, "C", (@key.slice(2,2)).to_i,"D", (@key.slice(3.2)).to_i)
#   end


# end
