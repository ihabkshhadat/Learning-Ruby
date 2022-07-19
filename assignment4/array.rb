module NumericArray
  
  def array_validation(items)
    valid_array = []
    items.each do |item|  
      if ((item.is_a? Float) || (item.is_a? Integer))
        valid_array.append(item)
      end 
    end
    return valid_array
  end
  
  def print_array(items)
    items.each do |item|
      is_int = item.is_a? Integer
      is_positive = item >0
      is_even = item%2==0
      type = is_int ? 'int' : 'float'
      positive_or_negative = is_positive ? 'positive' : 'negative'
      even_or_odd = is_even ? 'even' : 'odd'
      puts "#{item} is an #{even_or_odd} number , #{type} , #{positive_or_negative} number"
      end
  end

  def convert_float(items)
    for index in (0..items.length)
    items[index] = items[index].to_i.abs
    end
    return items
  end


end