class StringComposer
    def initialize(input_str)
        @input_str=input_str
    end

    def string_validation(re)
        if @input_str.nil? or @input_str.empty? or re
            return false
        end
        return true
    end

    def composed
        if string_validation(@input_str =~ /[\d+|\s+]/ )
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
            result += "#{char}#{count}"

            return result
        end
        return "Input Value Not a Valid Input"
    end

    def decomposed
        if string_validation(!(@input_str  !~  /([a-z]\D|[A-z]\D)+/))
            result = ""
            puts @input_str.length/2
            for i in 0..(@input_str.length/2)
                char = @input_str[i*2]
                count=@input_str[i*2+1].to_i
                count.times do 
                    result+=char
                end
            end
            return result
        end
        return "Input Value Not a Valid Input"
    end

end

input_val = gets.chomp()
puts StringComposer.new(input_val).decomposed
