def validate_range(roman)
    chain = roman.split("")
    if chain[0] == "M" || chain[0] == "D" || chain[0] == "C"
        message = "Out of range"
    else 
        message = "Ok"
    end
end

def validate_non_repetitions(roman)
    chain = roman.split("")
    first_letter = chain[0]
    
        v_times= 0
        l_times = 0
        for i in (0..chain.length - 1)
            if chain[i] == "V"
                v_times = v_times + 1
                if v_times > 1
                    message = "Syntax error"
                else 
                    message = "Ok"
                end
            elsif chain[i] == "L"
                l_times = l_times + 1
                if l_times > 1
                    message = "Syntax error"
                else
                    message = "Ok"
                end
            end
        end
        return message     
  
end