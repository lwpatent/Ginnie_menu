def element_index( element, my_array )
  if my_array.include? element
    my_array.each_with_index do | arr_element, index |
      if arr_element == element
        return index #return index pos
      end
    end
  end
  return -1
end

puts element_index("b", ["a", "b", "c"])
puts element_index("x", ["a", "b", "c"])
