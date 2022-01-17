require './lib/enigma'
require './lib/dateoffset'
require './lib/keyoffset'
require './lib/offsetter'
require 'Time'
require './lib/offsetter'

@enigma = Enigma.new
encrypted_file = File.open(ARGV[0], 'r')
decrypted_file = File.open(ARGV[1], 'w')
key = ARGV[2]
date = ARGV[3]
message = encrypted_file.read
encrypted_file.close
@enigma.decrypt(message, key, date)
decrypted_file.write(decryption_hash[:decryption])
decrypted_file.close
p "Created #{decrypted_file} with the key #{key} and date #{date}"
