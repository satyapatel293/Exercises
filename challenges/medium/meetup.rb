require 'date'

class Meetup
  SCHED = ['first', 'second', 'third', 'fourth', 'fifth', 'last', 'teenth']
  WEEK = %w(sunday monday tuesday wednesday thursday friday saturday)

  attr_accessor :this_month, :last_day, :teen_start, :teen_end

  def initialize(year, month)
    @this_month = Date.new(year, month)
    @last_day = Date.new(year, month, -1)
    @teen_start = Date.new(year, month, 13)
    @teen_end = Date.new(year, month, 19)
  end

  def day(weekday, schedule)
    results = []
    this_month.step(last_day) do |date|
      results << date if date.wday == WEEK.index(weekday.downcase)
    end

    idx = SCHED.index(schedule.downcase)
    case idx
    when 0..4 then results[idx]
    when 5 then results[-1]
    else calculate_teen(weekday.downcase)
    end
  end

  private

  def calculate_teen(weekday)
    value = nil
    teen_start.step(teen_end) do |date|
      value = date if date.wday == WEEK.index(weekday)
    end
    value
  end
end

meetup = Meetup.new(2017, 2)
p meetup.day('Friday', 'teenth')
