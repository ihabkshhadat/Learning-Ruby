module NumericArray
  
  def array_validation(items)
    items.reject{|item| !(item.is_a?(Float) || item.is_a?(Integer))}
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
    items.map{|item| item.to_i.abs}
  end


end