require 'simplecov'
require './lib/date'
require './lib/enigma'

RSpec.describe Enigma do
    before(:each) do
    @enigma=Enigma.new(text: "hello world",key: "02715",date: "040895")
    end

  it 'demonstrates that Enigma class exists' do
    expect(@enigma).to be_a(Enigma)
  end
end
