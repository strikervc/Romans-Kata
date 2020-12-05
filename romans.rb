def validate_range(roman)
    chain = roman.split("")
    if chain [0] == "I" || chain [0] == "V" || chain [0] == "X"  
        message = "Ok"
        if chain[0] == "X"
            if chain[1] != nil
                message = "Syntax error"
            else
            end
        end
    else
        message = "Syntax error"
    end  
    return message
end

def validate_non_repetitions_V(roman)
    v_times = 0
    chain = roman.split("")
    for i in (0..chain.length - 1)
        if chain[i] == "V"
            v_times = v_times + 1
            if v_times > 1
                message = "Syntax error"
            else 
                message = "Ok"
            end
        end
    end
    return message
end