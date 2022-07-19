class StringComposer
  def initialize(input_str)
    @input_str=input_str
  end

  def string_validation(regex)
    message = "Input Value Not a Valid Input"
    return @input_str =~ regex, message
  end

  def composed
    regex = /^[a-z]+$/i
    is_valid, message =string_validation(regex)
    key_counter = Hash.new
    if is_valid
      count=1
      @input_str.split('').each do |char|
        if key_counter.key?(char)
          key_counter[char]+=1
        else
          key_counter[char]=1
        end
      end
      result = ""
      key_counter.each do |key,val|
      result+="#{key}#{val}"
    end
    puts result
    else
      puts message
    end
  end

  def decomposed
    regex = /^([a-z]\d+)+$/i
    is_valid, message =string_validation(regex)
    if is_valid
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
    else
      puts message
    end
  end
end