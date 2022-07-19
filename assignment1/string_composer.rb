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
    results = ""
    if is_valid
      keys = @input_str.split(/\d+/)
      counts = @input_str.split(/[a-z]/i)
      for index in 0...keys.length
        results += keys[index]*counts[index+1].to_i
      end
      puts results
    else
      puts message
    end
  end
end