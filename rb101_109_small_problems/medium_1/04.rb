=begin
--------------------- P
input: integer n which represents number of lights
output: array of which lights are still on 
rules: 
  Explicit: 
    - all lights start in on state 
    - you perfrom n total laps toggling switches 
    - each lap you toggle switches which are multiples of the current lap # 
    - 
  Implicit: 
    - all switches can be switched to on positon on lap 1 
    - 
--------------------- E

--------------------- D

--------------------- A
toggle function 

create array with n total false switches 
itterate through array n times 
each lap times if (index + 1) % lap then toggle lap 
return final output 

transform final array to index + 1 numbers 
remove false values 
=end

def lights(n)
  lights = (1..n).map { |light| [light, false] } 

  1.upto(n) do |lap|
    lights.map! do |light, status| 
      if light % lap == 0
        [light, !status]
      else 
        [light, status]
      end 
    end
  end 

  lights.select! {|light, status| status }
  lights.map {|light, status| light }.flatten
end 


# they did this with a hash I should be able to see my nested array is basically same 
# also they split up the segments of the program lets try that below 


def initalize_light(number_of_lights)
  lights = Hash.new 
  1.upto(number_of_lights) { |positon| lights[positon] = 'off' }
  lights
end 

def toggle_lights(lights, lap)
  lights.each do |positon, status|
    if positon % lap == 0 
      lights[positon] = (status == 'off') ? 'on' : 'off'
    end 
  end 
end 

def lights_on(lights)
  lights.select { |_positon, status| status == 'on'}.keys 
end 

def formatted_output(lights)
  on = lights_on(lights)
  off = lights.keys - on
  
  on[-1] = "and #{on[-1]}"
  on = on.join(', ')

  off[-1] = "and #{off[-1]}"
  off = off.join(', ')

  puts "lights #{off} are now off; #{on} are on"
end 

def check_lights(n)
  lights = initalize_light(n)
  1.upto(lights.size) do |lap|
    toggle_lights(lights, lap)
  end 

  formatted_output(lights)
  lights_on(lights)
end 


p check_lights(5)
p check_lights(10)
p check_lights(1000)



# #further exploration 3
# def formatted_output(lights)
#   on = lights_on(lights)
#   off = light.keys - on
  
#   on[-1] = "and #{on[-1]}"
#   on = on.join(', ')

#   off[-1] = "and #{off[-1]}"
#   off = off.join(', ')

#   puts "lights #{off} are now off; #{on} are on"
# end 