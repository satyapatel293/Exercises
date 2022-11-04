numbers = [5, 9, 21, 26, 39]


divisble_by_three = numbers.select do |number|
                      number % 3 == 0
                    end 

p divisble_by_three