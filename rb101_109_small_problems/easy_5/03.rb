=begin
--------------------- P
after_midnight
input: string with time after midnight 
output: minutes after midnight 
rules: 
  Explicit: 
    - return should be integer between 0-1439
    - using 24 hour format
    - can't use Date or Time methods
    - 24:00 == 0 minutes in this example
  Implicit: 
    - formated entery time will be string in 24hour fomrat 
    - 
--------------------- E
after_midnight('00:00') == 0
after_midnight('12:34') == 754
after_midnight('24:00') == 0
--------------------- D

--------------------- A
splits hours and minutes from current string 
multiple hours times 60mins 
add to mins reutrn totoal 
if total == 1440 retrun 0 
else return total 
=end

=begin
--------------------- P
before_midnight
input: string with time before midnight 
output: minutes before midnight 
rules: 
  Explicit: 
    - return should be integer between 0-1439
    - using 24 hour format
    - can't use Date or Time methods
    - 24:00 == 0 minutes in this example
  Implicit: 
    - formated entery time will be string in 24hour fomrat 
    - 
--------------------- E
before_midnight('00:00') == 0
before_midnight('12:34') == 686
before_midnight('24:00') == 0
--------------------- D

--------------------- A
splits hours and minutes from current string 
multiple hours times 60mins 
add to mins reutrn totoal 
1440 - total = return value 
=end


MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

def after_midnight(time)
  hours, mins = time.split(':').map(&:to_i)
  (hours * MINUTES_PER_HOUR + mins) % MINUTES_PER_DAY
end 


def before_midnight(time)
  delta_mins = MINUTES_PER_DAY - after_midnight(time)
  delta_mins = 0 if delta_mins == MINUTES_PER_DAY
  delta_mins
end 


p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0