class StringComposer
  def initialize(input_str)
    @input_str=input_str
  end

  def string_validation(regex)
    if @input_str =~ regex
        return true    
    end
    puts "Input Value Not a Valid Input"
    return false
  end

  def composed
    regex = /^[a-z]+$/i
    if string_validation(regex)
      char = @input_str[0]
      count=1
      result = ""
      for index in 1...@input_str.length
        if char == @input_str[index]
          count += 1
          if index == @input_str.length-1
            result += "#{char}#{count}"
          end
        else
          result += "#{char}#{count}"
          count = 1
          char = @input_str[index]
        end
      end
      return result
    end
  end

  def decomposed
    regex = /^([a-z]\d+)+$/i
    if string_validation(regex)
      temp = @input_str
      result = ""
      while temp.length > 0
        val = temp.match /[a-z]\d+/i
        char = val[0][0]
        val[0][1..-1].to_i.times do 
          result += char
        end
        temp = temp[val[0].length..-1]
      end
      return result
    end
  end
end