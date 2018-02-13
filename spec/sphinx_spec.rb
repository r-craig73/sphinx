require('rspec')
require('pry')
require('sphinx')

describe('#reveal') do
  it('returns the right answer after answering a joke') do
    riddle = Riddles.new('What has one head, one foot and four legs?', 'a bed')
    expect(riddle.reveal()).to(eq('a bed'))
  end

end
