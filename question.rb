class Question
  attr_reader :num1, :num2

  def initialize()
    @num1 = rand(1...20)
    @num2 = rand(1...20)
  end

  def print_question
    "What does #{@num1} plus #{@num2} equals? :"
  end

end
