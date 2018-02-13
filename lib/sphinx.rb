class Riddles

  def initialize(riddle1)
    @riddle1 = riddle1
    # @result = result
    # @riddle2 = riddle2
    # @riddle3 = riddle3
  end

  def reveal()
    if (@riddle1 == 'a bed')
      'oh happy days'
    else
      return 'failed, try again'
    end
  end

end

# && (@riddle2 == "the letter v") && (@riddle1 == "hawaii")
# , riddle2, riddle3
