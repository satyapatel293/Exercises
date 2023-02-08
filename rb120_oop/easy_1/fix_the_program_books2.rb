class Book
  attr_accessor :author, :title
  def to_s
    %("#{title}", by #{author})
  end
end

book = Book.new
book.author = "Neil Stephenson"
book.title = "Snow Crash"
puts %(The author of "#{book.title}" is #{book.author}.)
puts %(book = #{book}.)


=begin
further exploration

it is possible to initalize book objects like this make not be best way this case becasue we may not get the full book object at the end 

=end