class StringComposer
    def initialize(input_str)
        begin
            string_validation(input_str)
            puts composed(input_str)
            rescue =>exception
            puts exception   
        end
    end

    def string_validation(input_str)
        if input_str.nil? or input_str.empty?
            raise "Input Value Can't Be Null"
        elsif input_str =~ /[\d+|\s+]/
            raise "Input Value Can't Contain Number Or WhiteSpace" 
        end
    end

    def composed(input_str)
        char = input_str[0]
        count=1
        result = ""
        for index in 1...input_str.length
            if char==input_str[index]
                count+=1
            else
                result += "#{char}#{count}"
                count=1
                char=input_str[index]
            end
        end
        return result
    end
end

input_val = gets.chomp()
StringComposer.new(input_val)