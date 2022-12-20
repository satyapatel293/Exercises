=begin
flow 
1 variable represent register 
array representing stack 
string of arguments where is argument is performed
  split string into array perfrom each task 
arguments 
  - if digit add to register 
  - push register to stack
  - pop stack to register 
  - add register += pop stack 
  - same for other mult div mod sub
  - print register 
--------------------- P
input: string of arguments
output: 
rules: 
  Explicit: 
    - initalize register to 0 
    - programs should not contain unknown tokens 
    - won't try to pop unknown tokens from stack 
  Implicit: 
    - 
    - 
--------------------- E

--------------------- D

--------------------- A
=end

def minilang(arguments)
  register = 0 
  stack = []
  
  commands = arguments.split(' ')
  commands.each do |command|
    if command.to_i.to_s == command
      register = command.to_i
    end 
  
    case command
    when 'PUSH' 
      stack.push(register)
    when 'POP'
      register = stack.pop
    when 'PRINT'
      puts register
    when 'ADD'
      register += stack.pop
    when 'SUB'
      register -= stack.pop
    when 'MULT'
      register *= stack.pop
    when 'DIV'
      register /= stack.pop
    when 'MOD'
      register %= stack.pop
    end 
  end
end




minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('3 PUSH 5 MOD PRINT')
# (nothing printed; no PRINT commands)



#further exploration

# (3 + (4 * 5) - 7) / (5 % 3)

minilang('3 PUSH 5 MOD PUSH 7 PUSH 3 PUSH 4 PUSH 5 MULT ADD SUB DIV PRINT')


def minilang(arguments)
  register = 0 
  stack = []
  
  commands = arguments.split
  commands.each do |command|
    
    if !(stack.empty?)
      case command
      when 'PUSH' 
        stack.push(register)
      when 'POP'
        register = stack.pop
      when 'PRINT'
        puts register
      when 'ADD'
        register += stack.pop
      when 'SUB'
        register -= stack.pop
      when 'MULT'
        register *= stack.pop
      when 'DIV'
        register /= stack.pop
      when 'MOD'
        register %= stack.pop
      else 
        register = command.to_i
      end 
    end
 
end
end