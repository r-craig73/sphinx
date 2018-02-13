class Riddles

  def initialize(riddle1, riddle2, riddle3)
    @riddle1 = riddle1
    @riddle2 = riddle2
    @riddle3 = riddle3
  end

  def reveal()

    if ((@riddle1.downcase() == 'a bed') && (@riddle2.downcase() == "the letter v") && (@riddle3.downcase() == "hawaii"))
      'oh happy days'
    else
      'failed, try again'
    end
  end

end
