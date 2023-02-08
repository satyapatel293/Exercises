class Book
  attr_reader :author, :title
  def initialize(author, title)
    @author = author
    @title = title
  end

  def to_s
    %("#{title}", by #{author})
  end
end

book = Book.new("Neil Stephenson", "Snow Crash")
puts %(The author of "#{book.title}" is #{book.author}.)
puts %(book = #{book}.)


#further exploration 

=begin
 I ussed attr_reader because it allows the least level of access to the program 
 we do not need to write to make this program work 
  
  
  chaning to the other defs of reader method would not change how the medthos works becuase attr reader is a shortcut for this methods 
  might be advantage to use these forms if we want to mofidy they data when presenting it 
  
=end