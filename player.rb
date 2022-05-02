class Player
  attr_reader :tag, :initials, :lives

  def initialize(name, initials)
    @tag = name
    @initials = initials
    @lives = 3
  end

  def wrong_ans
    self.lives -=1
  end

  def curr_lives
    "#{lives}/3"
  end

  protected
  attr_writer :lives
end
