class Clock
  attr_accessor :hour, :mins

  def initialize(hour, mins)
    @hour = hour
    @mins = mins
  end

  def self.at(hour, mins = 0)
    Clock.new(hour, mins)
  end

  def to_s
    # h = hour.to_s.rjust(2, '0')
    # m = mins.to_s.rjust(2, '0')
    # "#{h}:#{m}"
    format('%02d:%02d', hour, mins)
  end

  def +(total_mins)
    current_mins = 60 * hour + mins
    new_hour, new_mins = (total_mins + current_mins).divmod(60)
    new_hour %= 24
    Clock.at(new_hour, new_mins)
  end

  def -(total_mins)
    current_mins = 60 * hour + mins
    new_hour, new_mins = (current_mins - total_mins).divmod(60)
    new_hour %= 24
    Clock.at(new_hour, new_mins)
  end

  def ==(other)
    to_s == other.to_s
  end
end
