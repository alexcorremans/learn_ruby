class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hours = @seconds/3600
    rest = @seconds%3600
    minutes = rest/60
    seconds = rest%60
    return sprintf("%02d:%02d:%02d", hours, minutes, seconds)
  end
end
