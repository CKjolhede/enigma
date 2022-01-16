require 'simplecov'
require './lib/date'
require './lib/enigma'

RSpec.describe Enigma do
    before(:each) do
    @enigma=Enigma.new(string: "hello world",key: "02715",date: "040895")
    end

  it 'demonstrates that Enigma class exists' do
    expect(@enigma).to be_a(Enigma)
  end

  it 'retrieves attributes of enigma class' do
    expect(@enigma.string).to eq("hello world")
    expect(@enigma.key).to eq("02715")
    expect(@enigma.date).to eq("040895")
  end

end
