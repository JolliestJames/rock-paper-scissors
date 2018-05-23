class Game

  attr_reader :started

  def start
    @started = true
    @finished = true
  end

  def started?
    self.started || false
  end
  
  def finished?
    !self.started || false
  end

  def play(left = nil, right = nil)
    raise 'Game must first be started' unless started?
    return nil unless (left && right)
    if (left == :rock && right == :scissors)
      @started = false
      "Rock beats scissors!"
    elsif (left == :scissors && right == :rock)
      @started = false
      "Rock beats scissors!"
    elsif (left == :rock && right == :paper)
      @started = false
      "Paper beats rock!"
    elsif (left == :paper && right == :rock)
      @started = false
      "Paper beats rock!"
    elsif (left == :scissors && right == :paper)
      @started = false
      "Scissors beats paper!"
    elsif (left == :paper && right == :scissors)
      @started = false
      "Scissors beats paper!"
    elsif (left == :rock && left == right)
      "Tie game. Try again!"
    elsif (left == :scissors && left == right)
      "Tie game. Try again!"
    elsif (left == :paper && left == right)
      "Tie game. Try again!"
    else 
      :UNKNOWN
    end
  end

end