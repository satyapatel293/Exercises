class Tree 
  include Enumerable 

  def each 
    #...
  end 
end 

# IMPORTANT TO USE ENUMERABBLE in a collection caslls 
# MUST include and  
# Implement method #each which must yield 
# successive elements of the collection. The method 
# will be called by almost any Enumerable method.