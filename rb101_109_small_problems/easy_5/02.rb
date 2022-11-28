=begin
--------------------- P
input: postice or negative integer 
output: string representation of time in 24 hour format 
rules: 
  Explicit: 
    - takes number of minutes and either adds or subtracts from midnight 24:00 (which is 1440 mins)
    - return value is string repesentation of time 
    - may not use Date and Time classes 
  Implicit: 
    - can be next day or further
    - counter must rest every 24:00 hrs 
    - 0 will be considered postive time 
--------------------- E
time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"
--------------------- D
 
--------------------- A
take input integer 
find remainder of dividing by 1440(24hours) gives us current time 
both for positve and negative numbers 
convert into hour and minute format (.divmod) by dividing time by 60mins 
format using keneral format "%02d", int

=end

def time_of_day(mins)
  day = 1440
  current_mins = mins % day #this is wrong should convert negative when working with modulo
  time = current_mins.divmod(60)
  formated_time = "#{format("%02d", time[0])}:#{format("%02d", time[1])}"
end 


p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"



#proper solution normalizes the negative minutes to a number between 0-1440 

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def normalize_minutes_to_0_through_1439(minutes)
  while minutes < 0
    minutes += MINUTES_PER_DAY
  end

  minutes % MINUTES_PER_DAY
end

def time_of_day(delta_minutes)
  delta_minutes = normalize_minutes_to_0_through_1439(delta_minutes)
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end


#perform with Date and Time classes 
def time_of_day(delta_minutes)
  time = Time.new(2022)
  current_time = time + delta_minutes*60
  current_time.strftime("%H:%M")
end


p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"