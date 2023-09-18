

def loneliest(s)
  characters = s.chars
  characters.delete(' ')
  characters

  striped = s.strip 

  top = characters.map do |c|
    copy = striped.chars
    idx = copy.index(c)
    copy = striped.chars
    total = 0 

    (idx+1).upto(striped.size) do |v|
      if striped[v] == ' '
        total += 1 
      else 
        break
      end
    end 

    (idx-1).downto(0) do |v|
      if striped[v] == ' '
        total += 1 
      else 
        break
      end
    end

    [c, total]
  end 

  max_rep = top.to_h.max { |p1, p2| p1[1] <=> p2[1]}[1]
  top.select! { |v| max_rep == v[1]}
  top.map { |v, v2| v}
end



p loneliest("a").sort # ["a"]
p loneliest("abc d   ef  g   h i j      ")#.sort # ["g"]
p loneliest("a   b   c ").sort # ["b"]
p loneliest("  abc  d  z    f gk s ").sort # ["z"]
p loneliest("a  b  c  de  ")#.sort # ["b", "c"]
p loneliest("abc")#.sort # ["a", "b", "c"]