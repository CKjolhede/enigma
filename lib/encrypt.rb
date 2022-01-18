require './lib/enigma'
require './lib/dateoffset'
require './lib/keyoffset'
require './lib/offsetter'
require 'Time'
require './lib/offsetter'

@enigma = Enigma.new
message_file= File.open(ARGV[0], 'r')
encrypted_file = File.open(ARGV[1], 'w')

message = message_file.read
message_file.close
@enigma.encrypt(message_file, key="82648", date="240818")

encrypted_file.write(encryption_hash[:encryption])
encrypted_file.close

p "Created #{encrypted_file} with the key #{key} and date #{date}/n"
