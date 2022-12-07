=begin
--------------------- P
input: floating point number between 0 and 360 inclusive
output: returns string with degrees, mins, seconds
rules: 
  Explicit: 
    - degrees (°), mins ('), seconds (") 
    - 1 degree is 60 mins 
    - 1 min is 60 secs
    - format mins and seconds with 2 digits and leading 0's 
  Implicit: 
    - 
    - 
--------------------- E
dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
--------------------- D

--------------------- A
floating point number input
initalize empty string  
total degrees divmod 1 [degs, remainder]
remainder x 60 divmod 1 [mins, remainder]
remainder x60 / 1

format unlimited digits 2 digits 2 digits 

=end



DEGREE = "\xC2\xB0"

def dms(num)
  cute_angle = ''

  deg, remainder = num.divmod(1)
  mins, remainder = (remainder * 60).divmod(1)
  secs, remainder =  (remainder * 60) / 1


  format(%(#{deg}#{DEGREE}%02i'%02i"), mins, secs)

  # cute_angle = "#{deg}#{DEGREE}#{format('%02i', mins)}'#{format('%02i', secs)}\""

end 

# p dms(30) == %(30°00'00")
# p dms(76.73) == %(76°43'48")
# p dms(254.6) #== %(254°36'00")
# p dms(93.034773) == %(93°02'05")
# p dms(0) == %(0°00'00")
# p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")




#Their soultion is easier to follow 
TOTAL_DEGREES = 360
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(degrees_float)
  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round #change whole thing to seconds then do calulcation on remainders 
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end



#further exploration


def dms(degrees_float)
  while degrees_float < 0 
    degrees_float += 360
  end 

  total_seconds = (degrees_float % TOTAL_DEGREES * SECONDS_PER_DEGREE).round #change whole thing to seconds then do calulcation on remainders 
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

p dms(400) == %(40°00'00")
p dms(-40) == %(320°00'00")
p dms(-420) == %(300°00'00")