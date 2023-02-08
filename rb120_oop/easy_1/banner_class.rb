# class Banner
#   def initialize(message)
#     @message = message
#   end

#   def to_s
#     [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
#   end

#   private

#   def horizontal_rule
#     "+-#{'-' * @message.size}-+"
#   end

#   def empty_line
#     "| #{' ' * @message.size} |"
#   end

#   def message_line
#     "| #{@message} |"
#   end
# end


# banner = Banner.new('To boldly go where no one has gone before.')
# puts banner


# banner = Banner.new('')
# puts banner


# Further Exploration


class Banner
  def initialize(message, width=message.size)
    @message = message
    @width = width
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private
  attr_reader :width, :message
  def horizontal_rule
   "+-#{'-' * width}-+"
  end

  def empty_line
   "| #{' ' * width} |"
  end

  def message_line
    if message.size <= width
      "| #{message.center(width)} |"      
    else
      multiline_message
    end
  end

  def multiline_message 
    lines = []
    start_idx = 0 
  
    while start_idx <= message.size 
      lines << message.slice(start_idx, width)
      start_idx += width
    end 
  
    lines.map do |line|
      "| #{line.center(width)} |"
     end.join("\n")
  end 

end


banner = Banner.new('To boldly go where no one has gone before.', 20)
puts banner


