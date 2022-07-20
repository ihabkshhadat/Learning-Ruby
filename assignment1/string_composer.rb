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
      @input_str.split('').each do |char|
        key_counter.include?(char)? key_counter[char]+=1  : key_counter[char]=1
      end
      puts key_counter.to_a.join
    else
      puts message
    end
  end

  def decomposed
    regex = /^([a-z]\d+)+$/i
    is_valid, message =string_validation(regex)
    results = ""
    if is_valid
      keys = @input_str.scan /[a-z]\d+/i
      keys.each do |item|
        # results += item.slice(0) * item.slice(1..-1).to_i 
        results += item.match(/([a-z])(\d+)/){$1 * $2.to_i} 

      end
      puts results
    else
      puts message
    end
  end
end