require './lib/enigma'
require './lib/keyoffset'
require 'pry'

RSpec.describe Enigma do
    before(:each) do
    @enigma = Enigma.new
    end

  it 'demonstrates that Enigma class exists' do
    expect(@enigma).to be_a(Enigma)
  end

  it 'has turned alphabet into array' do
    expect(@enigma.alphabet).to be_a(Array)
  end

  it 'can show #encrypt passes argument to key_hash generator' do
      @enigma.encrypt("hello world", "02715", "040895")
  expect(@enigma.key_hash).to be_a(Hash)
  end

  it 'can encrypt a message using the #encrypt method' do
    expect(@enigma.encrypt("hello world", "02715", "040895")).to eq({encryption: "keder ohulw", key: "02715", date: "040895"})
  end

  it 'can decrypt a message with a key and date' do
    @enigma.decrypt("keder ohylw", "02715", "040895")
    expect({decryption: "hello world", key: "02715", date: "040895"})
  end
end
