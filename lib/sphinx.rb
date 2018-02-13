class Riddles

  def initialize(riddle1, result)
    @riddle1 = riddle1
    @result = result
    # @riddle2 = riddle2
    # @riddle3 = riddle3
  end

  more_riddles = {'What is the center of gravity?' => 'a bed'}

  def reveal()
    if (@riddle1 == "a bed")
      @result = "oh happy days"

    else
      @result = "failed, try again"
    end

  end

end

# && (@riddle2 == "the letter v") && (@riddle1 == "hawaii")
# , riddle2, riddle3
