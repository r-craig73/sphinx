require('rspec')
require('pry')
require('sphinx')

describe('Riddles') do
  it('returns the right answer after answering a joke') do
    riddle1 = Riddles.new('a bed')
    expect(riddle1.reveal()).to(eq('oh happy days'))
  end

end
