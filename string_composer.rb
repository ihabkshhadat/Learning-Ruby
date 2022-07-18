class StringComposer
    def initialize(input_str)
        @input_str=input_str
    end

    def string_validation()
        if @input_str.nil? or @input_str.empty? or @input_str =~ /[\d+|\s+]/
            return false
        end
        return true
    end

    def composed()
        if string_validation
            char = @input_str[0]
            count=1
            result = ""
            for index in 1...@input_str.length
                if char==@input_str[index]
                    count+=1
                else
                    result += "#{char}#{count}"
                    count=1
                    char=@input_str[index]
                end
            end
            return result
        end
        return "Input Value Not a Valid Input"
    end
end

input_val = gets.chomp()
puts StringComposer.new(input_val).composed