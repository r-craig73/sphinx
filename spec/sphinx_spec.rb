require('rspec')
require('pry')
require('sphinx')

describe('Riddles') do
  it('returns the right answers after answering a joke') do
    riddle1 = Riddles.new('a bed', 'the letter v', 'hawaii')
    expect(riddle1.reveal()).to(eq('oh happy days'))
  end
  it('program works regardless of capitalization') do
    riddle1 = Riddles.new('a BED', 'the letter V', 'HAWAII')
    expect(riddle1.reveal()).to(eq('oh happy days'))
  end

end
